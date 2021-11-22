# [AdGuard Home](https://adguard.com/zh_cn/adguard-home/overview.html) - 过滤家中广告

> 当前版本为 **v0.106.3**，源镜像最新版本 [![](https://flat.badgen.net/github/tag/AdguardTeam/AdGuardHome?icon=github&label=AdguardTeam/AdGuardHome)](https://github.com/AdguardTeam/AdGuardHome)

<p align="center">
  <img src="https://cdn.jsdelivr.net/gh/y0ngb1n/dockerized/adguard-home/screenshots/dashboard.jpeg" alt="Hello AdGuard Home!"/>
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

帐号：`admin`
密码：`admin`

---

## 自定义广告规则

### 手动添加

> 过滤器 › 添加过滤器

### :+1: 推荐规则

规则 | 说明 | 推荐
--: | --- | :-:
[the Block List Project](https://github.com/blocklistproject/lists) | We have lists to block ads, scams, porn, malware, ransomware & more... » [reddit](https://www.reddit.com/r/blocklistproject/) | ❤
[anti-AD](https://github.com/privacy-protection-tools/anti-AD) | `https://anti-ad.net/easylist.txt` | ❤
[abp-filters/abp-filters-anti-cv](https://github.com/abp-filters/abp-filters-anti-cv) | `https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt` | ❤
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
[EasyList China](https://easylist-downloads.adblockplus.org/easylistchina.txt) | 国内网站广告过滤的主规则 | ❤
[EasyPrivacy](https://easylist-downloads.adblockplus.org/easyprivacy.txt) | EasyPrivacy 是隐私保护，不被跟踪 | ❤
[CJX’s Annoyance List](https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjx-annoyance.txt) | 过滤烦人的自我推广，并补充 EasyPrivacy 隐私规则 | ❤
[I don’t care about cookies](https://www.i-dont-care-about-cookies.eu/abp/) | 我不关心 Cookie 的问题，屏蔽网站的 cookies 相关的警告 | ❤

## 替代产品

+ [Pi-hole](https://pi-hole.net/)
+ [NextDNS](https://nextdns.io/)

## 参考链接

+ [AdGuard Home：用 DNS 巧去广告，所有设备都能用](https://sspai.com/post/52813)
+ [想获得「干净」的网页浏览体验？你需要这份全平台去广告指南](https://sspai.com/post/56617)
+ [部署在局域网里的 AdGuard Home](https://scomper.me/macos/2020-08-18), by @scomper
+ [AdGuard Home 安装使用教程](https://fuckcloudnative.io/posts/adguard-home/#span-idinline-toc2span-%E9%85%8D%E7%BD%AE%E4%BC%98%E5%8C%96)
