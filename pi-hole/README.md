# [Pi-hole](https://pi-hole.net/) 过滤家中广告

[![GitHub Repo](https://flat.badgen.net/github/tag/pi-hole/docker-pi-hole?icon=github&label=pi-hole/docker-pi-hole)](https://github.com/pi-hole/docker-pi-hole)

> 截至目前该镜像为 **v4.2.2** 版本

![pi-hole's dashboard](https://i0.wp.com/pi-hole.net/wp-content/uploads/2018/12/dashboard.png)

---

> 一个基于树莓派的家用 DNS 服务器，自带屏蔽广告功能。如果你还在用广告拦截器，Pi-hole 是更好的选择。它是树莓派上的 DNS 服务器，架设在局域网里面，内置黑名单，拦截广告域名的 DNS 请求。从此，局域网所有设备都看不到广告。—— 阮一峰 [第 26 期](https://github.com/ruanyf/weekly/blame/581075100e67447a2bdca9d1ef89cca8cca7932f/docs/issue-26.md#L144-L146)、[第 50 期](https://github.com/ruanyf/weekly/blame/f49a7f06039feee431c2761bbbdbe98fe7152b10/docs/issue-50.md#L160-L162) 周报分享

---

## Getting Started

```bash
mkdir -p /usr/local/docker/pi-hole ; cd $_
git svn clone https://github.com/y0ngb1n/dockerized/trunk/pi-hole .
docker-compose up -d

# or Just use docker-compose.yml, use it with .env
curl -sSL https://raw.githubusercontent.com/y0ngb1n/dockerized/master/pi-hole/docker-compose.yml > docker-compose.yml
docker-compose up -d
```

可通过以下方式访问 Pi-hole 的管理面板：

1. `http://<IP_ADDRESS_OF_YOUR_PI_HOLE>/admin/`
2. `http://pi.hole/admin/` (when using Pi-hole as your DNS server)
3. `http://pi.hole/` (when using Pi-hole as your DNS server)

## 默认广告规则

```txt
https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
https://mirror1.malwaredomains.com/files/justdomains
http://sysctl.org/cameleon/hosts
https://zeustracker.abuse.ch/blocklist.php?download=domainblocklist
https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt
https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt
https://hosts-file.net/ad_servers.txt
```

## 添加广告规则

### 手动添加

> Login › Settings › Blocklists › 添加自定义源 › Save and Update

### :+1: 推荐规则

项目 | AD 文件地址 | 推荐
--: | --- | :-:
[the Block List Project](https://blocklist.site/app/) | We have lists to block ads, scams, porn, malware, ransomware & more... | ❤
[my-pihole-blocklists](https://github.com/chadmayfield/my-pihole-blocklists) | <https://github.com/chadmayfield/my-pihole-blocklists/tree/master/lists>
[vokins/yhosts](https://github.com/vokins/yhosts) |  `https://raw.githubusercontent.com/vokins/yhosts/master/hosts`
[neoFelhz/neohosts](https://github.com/neofelhz/neohosts) | `https://hosts.nfz.moe/127.0.0.1/full/hosts`
[AdAway/AdAway](https://github.com/AdAway/AdAway) | `https://adaway.org/hosts.txt`
[MWSL-hostslist](http://www.mwsl.org.cn/mwsl-hostslist/) | `http://hosts.mwsl.org.cn/hosts.txt`
[Blocklist Collection](https://firebog.net/) | [https://firebog.net/](https://firebog.net/)
[justdomains/blocklists](https://github.com/justdomains/blocklists) | [https://github.com/justdomains/blocklists](https://github.com/justdomains/blocklists)
[AdguardTeam/AdGuardSDNSFilter](https://github.com/AdguardTeam/AdguardSDNSFilter) | `https://justdomains.github.io/blocklists/lists/adguarddns-justdomains.txt`
[EasyList](https://easylist.to/) | `https://justdomains.github.io/blocklists/lists/easylist-justdomains.txt`</br>`https://justdomains.github.io/blocklists/lists/easyprivacy-justdomains.txt`
[NoCoin adblock list](https://github.com/hoshsadiq/adblock-nocoin-list) | `https://justdomains.github.io/blocklists/lists/nocoin-justdomains.txt`

### 修改配置文件

目前的配置文件：[adlists.list](./config/adlists.list)

一键更新规则源：`wget -O adlists.list https://v.firebog.net/hosts/lists.php?type=tick`

## 参考链接

- [Pi-hole 拦截广告](https://www.troyhunt.com/mmm-pi-hole/)
- [How a Single Raspberry Pi made my Home Network Faster](https://www.brianchristner.io/how-a-single-raspberry-pi-made-my-home-network-faster/)
