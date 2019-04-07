# [AdGuard Home](https://adguard.com/zh_cn/adguard-home/overview.html) 过滤家中广告

[![](https://flat.badgen.net/github/tag/AdguardTeam/AdGuardHome?icon=github&label=AdguardTeam/AdGuardHome)](https://github.com/AdguardTeam/AdGuardHome)

> 截至目前使用的镜像为 **v0.94** 版本

<p align="center">
    <img src="https://cdn.adguard.com/public/Adguard/Common/adguard_home.gif" width="100%"/>
</p>

## Docker Compose

```bash
mkdir -p /usr/local/docker/adguard-home ; cd $_
curl -sSL https://raw.githubusercontent.com/y0ngb1n/dockerized/master/adguard-home/docker-compose.yml > docker-compose.yml
docker-compose up -d
```

通过以下方式访问 AdGuard Home 的管理面板：

- `http://<IP_ADDRESS_OF_YOUR_ADGUARD_HOME>:3000`

## 自定义广告规则

### 手动添加

> 过滤器 › 添加过滤器

项目 | AD 文件地址
---: | ---
[vokins/yhosts](https://github.com/vokins/yhosts) |  `https://raw.githubusercontent.com/vokins/yhosts/master/hosts`
