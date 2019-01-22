# [Pi-hole](https://pi-hole.net/) 过滤家中广告

[![Official repository](https://img.shields.io/badge/official_repo-pi--hole/docker--pi--hole-brightgreen.svg?logo=github&logoColor=white&style=flat-square)](https://github.com/pi-hole/docker-pi-hole)
[![Official newest release](https://img.shields.io/github/release/pi-hole/docker-pi-hole.svg?label=official%20newest%20release&style=flat-square)](https://github.com/pi-hole/docker-pi-hole/releases)

> 截至目前该镜像为 **v4.1.1** 版本

![pi-hole's dashboard](https://i0.wp.com/pi-hole.net/wp-content/uploads/2018/12/dashboard.png)

## Docker Compose

```bash
mkdir -p /usr/local/docker/pi-hole ; cd $_
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

项目 | AD 文件地址
---: | ---
[AdguardTeam/AdGuardSDNSFilter](https://github.com/AdguardTeam/AdguardSDNSFilter) | `https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt`
[vokins/yhosts](https://github.com/vokins/yhosts) |  `https://raw.githubusercontent.com/vokins/yhosts/master/hosts.txt`
[neoFelhz/neohosts](https://github.com/neofelhz/neohosts) | `https://hosts.nfz.moe/127.0.0.1/full/hosts`
[AdAway/AdAway](https://github.com/AdAway/AdAway) | `https://adaway.org/hosts.txt`
[MWSL-hostslist](http://www.mwsl.org.cn/mwsl-hostslist/) | `http://hosts.mwsl.org.cn/hosts.txt`
[Blocklist Collection](https://firebog.net/) | [https://firebog.net/](https://firebog.net/)
[justdomains/blocklists](https://github.com/justdomains/blocklists) | [https://github.com/justdomains/blocklists](https://github.com/justdomains/blocklists)
[EasyList China](https://easylist-downloads.adblockplus.org/easylistchina.txt) | `https://easylist-downloads.adblockplus.org/easylistchina.txt`

### 修改配置文件

目前的配置文件：[adlists.list](https://raw.githubusercontent.com/y0ngb1n/dockerized/master/pi-hole/adlists.list)

一键更新规则源：`wget -O adlists.list https://v.firebog.net/hosts/lists.php?type=tick`
