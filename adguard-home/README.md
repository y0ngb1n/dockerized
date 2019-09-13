# [AdGuard Home](https://adguard.com/zh_cn/adguard-home/overview.html) - 过滤家中广告

> 当前版本为 **v0.98.1**，源镜像最新版本 [![](https://flat.badgen.net/github/tag/AdguardTeam/AdGuardHome?icon=github&label=AdguardTeam/AdGuardHome)](https://github.com/AdguardTeam/AdGuardHome)

<p align="center">
    <img src="https://cdn.adguard.com/public/Adguard/Common/adguard_home.gif" width="100%"/>
</p>

---

## TL;DR;

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
mkdir -p /usr/local/dockerized/adguard-home ; cd $_
git svn clone https://github.com/y0ngb1n/dockerized/trunk/adguard-home .
docker-compose up -d
```

通过以下方式访问 AdGuard Home 的管理面板：

- `http://<IP_ADDRESS_OF_YOUR_ADGUARD_HOME>:3000`

---

## 自定义广告规则

### 手动添加

> 过滤器 › 添加过滤器

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

## 参考链接

+ [AdGuard Home：用 DNS 巧去广告，所有设备都能用](https://sspai.com/post/52813)
+ [想获得「干净」的网页浏览体验？你需要这份全平台去广告指南](https://sspai.com/post/56617)
