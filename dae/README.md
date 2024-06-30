# dae - 内核级高性能透明代理工具

dae（大鹅）是一款基于 eBPF 技术的 Linux 高性能透明代理工具

![how dae works](https://github.com/daeuniverse/dae/raw/main/docs/netstack-path.webp)

## TL;DR;

```bash
docker compose down && docker compose up -d && docker compose logs -f
```

## 配置说明

- 使用容器运行 dae 时，需要 `--pid host` 或在规则添加 `pname(dae) -> must_direct`，否则访问国内流量会无限循环。[daeuniverse/dae#511](https://github.com/daeuniverse/dae/issues/511#issuecomment-2081981796)
- 如需将 dae 作为网关为其他局域网设备提供代理时，须添加配置 `lan_interface: eth0`，否则被代理机器无法正常联网。

## 参考链接

- https://github.com/daeuniverse/dae
- [Config Examples](https://github.com/daeuniverse/dae/discussions/81) / [Config Example (CN)](https://github.com/daeuniverse/dae/discussions/245)
- https://idev.dev/proxy/dae-configuration.html
- [dae 做为旁路由时无法正常访问国内网站](https://github.com/daeuniverse/dae/issues/511#issuecomment-2081981796)
