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

## 旁路网关

- 解决旁路网关导致的非对称路由问题，须开启 IP 动态伪装，转换为对称路由，解决方案如下：

  ```bash
  # https://docs.redhat.com/zh_hans/documentation/red_hat_enterprise_linux/8/html/securing_networks/configuring-nat-using-nftables_getting-started-with-nftables
  nft add table nat
  nft add chain nat postrouting { type nat hook postrouting priority 100 \; }
  nft add rule nat postrouting oifname "eth0" masquerade
  ```

- 在旁路网关模式下，局域网中同网段的其它设备设置了网关，因非对称路由导致 VPN 流量连接该设备异常。如 Tailscale 无法远程家里的 PC 或 Linux，临时解决方案如下：

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
  # 添加转发规则
  sudo iptables -t nat -A PREROUTING -s 100.64.0.0/10 -j DNAT --to-destination 192.168.50.1
  sudo iptables -t nat -A POSTROUTING -d 192.168.50.1 -j MASQUERADE

  # 这些规则在重启后会丢失，如果需要持久化，可以使用以下命令保存规则（可选）
  # Debian / Ubuntu
  sudo sh -c "iptables-save > /etc/iptables/rules.v4"
  # CentOS / RHEL
  sudo sh -c "iptables-save > /etc/sysconfig/iptables"
  ```

## 参考链接

- https://github.com/daeuniverse/dae
- [Config Examples](https://github.com/daeuniverse/dae/discussions/81) / [Config Example (CN)](https://github.com/daeuniverse/dae/discussions/245)
- https://idev.dev/proxy/dae-configuration.html
- [dae 做为旁路由时无法正常访问国内网站](https://github.com/daeuniverse/dae/issues/511#issuecomment-2081981796)
- [不良林｜入门旁路由指南](https://www.youtube.com/watch?v=cFOob3djiOA)
