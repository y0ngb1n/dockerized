# [Nexus](https://www.sonatype.com/nexus-repository-oss) - 私有软件仓库

> 当前版本为 **v3.21.1**，源镜像最新版本 [![](https://flat.badgen.net/github/tag/sonatype/docker-nexus3?icon=github&label=sonatype/docker-nexus3)](https://github.com/AdguardTeam/AdGuardHome)

<p align="center">
    <img src="https://i.loli.net/2020/03/10/tVTO2QAN8kfjnzl.png" width="100%"/>
</p>

<sub>Image by [devopscube](https://devopscube.com/author/devopscube/) via [How To Install Latest Sonatype Nexus 3 on Linux](https://devopscube.com/how-to-install-latest-sonatype-nexus-3-on-linux/)</sub>

---

## TL;DR;

```bash
docker run -d -p 8081:8081 --name nexus sonatype/nexus3
```

等待 3-5 分钟，如果容器没有异常退出，那么你可以通过以下方式访问 Nexus 的管理面板：

- `http://<IP_ADDRESS_OF_YOUR_NEXUS>:8081`

第一次启动 Nexus 的默认帐号是 `admin` 密码是 `admin123` 登录以后点击页面上方的齿轮按钮进行设置。

---

## 替代产品

+ [JFrog Artifactory](https://jfrog.com/artifactory/) - 通用制品库管理平台

## 参考链接

+ [使用 Docker 搭建私有软件仓库 Nexus 3](https://soulteary.com/2020/03/08/use-docker-to-build-private-software-repositories-nexus-v3.html), by 苏洋
+ [Nexus 3.x 的私有仓库](https://yeasy.gitbooks.io/docker_practice/repository/nexus3_registry.html)