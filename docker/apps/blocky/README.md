# [Blocky](https://github.com/0xERR0R/blocky) - 一个轻量级的 DNS 代理工具，支持 DoT/DoH 加密以及广告过滤

[![GitHub repo](https://flat.badgen.net/github/release/0xERR0R/blocky?icon=github&label=0xERR0R/blocky)](https://github.com/0xERR0R/blocky)

![Blocky Grafana Dashboard](https://0xerr0r.github.io/blocky/v0.21/grafana-dashboard.png)

## 特色功能

- **支持 Prometheus / Grafana**
  支持与 Prometheus 和 Grafana 集成，可以将 DNS 查询数据导出到 Prometheus 监控系统，并使用 Grafana 进行可视化展示和分析。

- **支持 Redis 缓存**
  可以与 Redis 集成，使用 Redis 作为缓存存储，提高 DNS 查询的性能和响应速度。

- **支持域名分流查询**
  支持根据域名进行分流查询，可以根据配置的规则将特定的域名查询转发到指定的 DNS 服务器，实现更灵活的 DNS 解析控制。

- **日志支持记录到 MySQL、PostgreSQL、CSV**
  支持将 DNS 查询日志记录到多种存储介质，包括 MySQL、PostgreSQL 和 CSV，方便用户进行日志分析和存档。

- **支持 DoH（DNS-over-HTTPS）和 DoT（DNS-over-TLS）**
  支持 DNS-over-HTTPS 和 DNS-over-TLS 协议，可以加密和保护 DNS 查询的安全性和隐私性。

- **支持屏蔽（block）域名**
  允许用户配置屏蔽（block）特定的域名，阻止其解析，从而实现对广告、恶意软件等不受欢迎的域名的屏蔽。

---

## TL;DR;

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
curl -sSL https://raw.githubusercontent.com/y0ngb1n/dockerized/master/blocky/docker-compose.yml > docker-compose.yml
docker compose down && docker compose up -d
```

## DNS 解析

```console
# 正常域名
$ nslookup github.com
Server:		192.168.50.100
Address:	192.168.50.100:53

Non-authoritative answer:
Name:	github.com
Address: 20.205.243.166

# 广告域名
$ nslookup ad.12306.cn
Server:		192.168.50.100
Address:	192.168.50.100:53

Non-authoritative answer:
Name:	ad.12306.cn
Address: 0.0.0.0
```

## 参考配置

```yaml
ports:
  dns: 53
  http: 4000
connectIPVersion: v4
bootstrapDns:
  - upstream: tcp-tls:1.1.1.1:853
    ips:
      - 1.1.1.1
upstream:
  default:
    - tcp-tls:1.1.1.1:853
    - tcp-tls:1.0.0.1:853
    - tcp-tls:dot.pub:853
    - https://1.1.1.1/dns-query
    - https://1.0.0.1/dns-query
    - tcp-tls:dot.pub:853
    - https://doh.pub/dns-query
    - tcp-tls:dns.alidns.com:853
    - https://dns.alidns.com/dns-query
    - https://dns.bboysoul.cn/dns-query
    - https://dns-backup.bboysoul.cn/dns-query
filtering:
  queryTypes:
    - AAAA
upstreamTimeout: 2s
startVerifyUpstream: true

customDNS:
  customTTL: 1h
  rewrite:
    home: lan
    replace-me.com: with-this.com
  mapping:
    # 解析定义的域名及其任意子域名，可方便地搭配 Traefik 使用
    lab.io: 192.168.50.100
    lab.com: 192.168.50.100

conditional:
  mapping:
    feedly.com: https://dns.bboysoul.cn/dns-query
    google.com.hk: https://dns.bboysoul.cn/dns-query
    docker.com: https://dns.bboysoul.cn/dns-query
    cloudfront.net: https://dns.bboysoul.cn/dns-query
    wikipedia.org: https://dns.bboysoul.cn/dns-query
    youtube.com: https://dns.bboysoul.cn/dns-query
    twitter.com: https://dns.bboysoul.cn/dns-query
    facebook.com: https://dns.bboysoul.cn/dns-query
    instagram.com: https://dns.bboysoul.cn/dns-query
    githubusercontent.com: https://dns.bboysoul.cn/dns-query

blocking:
  blockType: zeroIP
  refreshPeriod: 24h
  downloadTimeout: 4m
  downloadCooldown: 10s
  blackLists:
    ads:
      - https://anti-ad.net/domains.txt
      - |
        some-ads-domain.com
    special:
      - https://ghproxy.com/https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts
  clientGroupsBlock:
    default:
      - ads
      - special

log:
  level: info
  format: text
  timestamp: true

caching:
  minTime: 1h
  maxItemsCount: 10000
  prefetching: true
  prefetchExpires: 2h
  prefetchMaxItemsCount: 100

queryLog:
  type: csv
  target: /logs
  logRetentionDays: 0

prometheus:
  enable: true
  path: /metrics

ede:
  enable: true
```

## 参考链接

- [Pi-hole vs AdguardHome vs Blocky](https://www.youtube.com/watch?v=rfBh2VVOVZA)
- [Set up local DNS and ad blocking](https://sascha.sh/posts/set-up-local-dns-and-adblocking/)
- [Substituindo pi-hole por blocky](https://thul.io/substituindo-pi-hole-por-blocky/)
- https://www.bboy.app/2022/08/26/%E6%9B%B4%E6%96%B0%E4%BA%86%E4%B8%8B%E6%88%91%E7%9A%84dns%E6%9C%8D%E5%8A%A1/
- https://www.bboy.app/tags/dns/
