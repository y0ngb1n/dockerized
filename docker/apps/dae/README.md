# [dae](https://github.com/daeuniverse/dae) - 内核级高性能透明代理工具

dae（大鹅）是一款基于 eBPF 技术的 Linux 高性能透明代理工具

![how dae works](https://github.com/daeuniverse/dae/raw/main/docs/netstack-path.webp)

## TL;DR;

```bash
docker compose down && docker compose up -d && docker compose logs -f
```

## 配置说明

- 使用容器运行 dae 时，需要 `--pid host` 或在规则添加 `pname(dae) -> must_direct`，否则访问国内流量会无限循环。[daeuniverse/dae#511](https://github.com/daeuniverse/dae/issues/511#issuecomment-2081981796)
- 如需将 dae 作为网关为其他局域网设备提供代理时，须添加配置 `lan_interface: eth0`，否则被代理机器无法正常联网。
- 当前 `v0.6.0` 版本在未联网的情况下启动会导致网络异常，可在保证上游网络通畅的情况重启 `dae` 即可解决。[t.me/daeuniverse/261310](https://t.me/daeuniverse/261310)

## 旁路网关（非对称路由、路由重定向）

- 经过旁路网关后出现国外网站正常访问却无法访问国内网站的情况。解决旁路网关导致的非对称路由问题，须开启 IP 动态伪装，转换为对称路由，解决方案如下：

  ```bash
  # 在旁路网关执行
  # https://docs.redhat.com/zh_hans/documentation/red_hat_enterprise_linux/8/html/securing_networks/configuring-nat-using-nftables_getting-started-with-nftables
  nft add table nat
  nft add chain nat postrouting { type nat hook postrouting priority 100 \; }
  nft add rule nat postrouting oifname "eth0" masquerade
  ```

- 在旁路网关模式下，局域网中同网段的其它设备设置了网关，因非对称路由导致 VPN 流量连接该设备异常。如 Tailscale 无法远程家里的 PC 或 Linux，解决方案如下：

  <details open>
  <summary><b>主路由器（推荐）</b></summary>

  解决 Tailscale 在外网可访问（未经过旁路网关的设备）部分服务，但无法正常访问家里内网（经过旁路网关的设备）服务，可参考[这篇帖子](https://www.right.com.cn/forum/forum.php?mod=viewthread&tid=8236876&page=1)。

  ```bash
  iptables -t nat -A PREROUTING -p tcp --syn -s 100.64.0.0/10 -j CONNMARK --set-mark 7777
  iptables -t nat -A POSTROUTING -p tcp -m connmark --mark 7777 -j MASQUERADE
  iptables -t nat -A POSTROUTING -p tcp -m connmark ! --mark 7777 -j ACCEPT
  ```

  参数说明：
  1. 通过 `--syn` 参数区分 TCP 连接是否是握手状态，命中则表示是内网主动向外网发起的请求，通过 `CONNMARK` 标记该连接；
  2. 连接中存在对应标记（内网主动发起的请求）则重写 SNAT；
  3. 连接中不存在对应标记（外网向内网发起请求）则直接放行；
  4. 请将 `100.64.0.0/10` 替换为实际 IP 网段。

  </details>

  <details>
  <summary><b>终端设备（临时）</b></summary>

  - 在 Windows 下，可以使用 `netsh` 命令配置路由，以便将来自 `100.64.0.0/10` 网段的流量转发到网关 `192.168.50.1`。以下是具体步骤：
    ```bash
    ## Windows
    # 查看网络接口
    netsh interface ipv4 show interfaces
    # 添加路由规则（这里的 `网络接口名称` 应替换为实际网络接口的名称，如 `WLAN`）
    # eg. 将来自 100.64.0.0/10 网段的流量通过指定的网关 192.168.50.1 进行转发（该命令将在重新启动后丢失。如果需要持久化，可以将命令写入启动脚本中）
    sudo netsh interface ipv4 add route 100.64.0.0/10 "网络接口名称" 192.168.50.1
    ```

  - 在 Linux 下，可以使用 `iptables` 来设置规则，将来源为 `100.64.0.0/10` 的流量转发到网关 `192.168.50.1`。下面是具体步骤：
    ```bash
    ## Linux
    # 添加转发规则（该命令将在重新启动后丢失。如果需要持久化，可以将命令写入启动脚本中）
    ip route add 100.64.0.0/10 via 192.168.50.1 dev eth0
    #ip route del 100.64.0.0/10 via 192.168.50.1 dev eth0
    ```

  </details>
    

## 参考链接

- https://github.com/daeuniverse/dae
- [Config Examples](https://github.com/daeuniverse/dae/discussions/81) / [Config Example (CN)](https://github.com/daeuniverse/dae/discussions/245)
- https://idev.dev/proxy/dae-configuration.html
- [dae 做为旁路由时无法正常访问国内网站](https://github.com/daeuniverse/dae/issues/511#issuecomment-2081981796)
- [不良林｜入门旁路由指南](https://www.youtube.com/watch?v=cFOob3djiOA)
- [旁路由的原理与配置一文通](https://easonyang.com/posts/transparent-proxy-in-router-gateway/)
- [完美解决主路由端口映射问题，不需要在旁路由二次映射，并解决 NAT 类型问题](https://www.right.com.cn/forum/forum.php?mod=viewthread&tid=8236876&page=1)