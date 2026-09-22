<h1 align="center">𝑫𝒐𝒄𝒌𝒆𝒓𝒊𝒛𝒆𝒅</h1>

<div align="center">

`🐳 一处构建，处处运行 🚢`

[![Author](https://flat.badgen.net/badge/author/y0ngb1n/orange)](https://sourl.cn/TpLCyc)
[![Docker Hub](https://flat.badgen.net/badge/dockerhub/y0ngb1n?icon=docker&label=hub)](https://sourl.cn/WBkUGt)
![Made with ❤](https://flat.badgen.net/badge/made%20with/%e2%9d%a4/ff69b4)
![GitHub Stars](https://flat.badgen.net/github/stars/y0ngb1n/dockerized)
![GitHub Forks](https://flat.badgen.net/github/forks/y0ngb1n/dockerized)
[![Follow Me](https://img.shields.io/github/followers/y0ngb1n.svg?style=social&label=Follow%20Me)](https://github.com/y0ngb1n)

![Happy Docker](https://i.loli.net/2019/04/10/5cae05666de2a.jpg "Happy Docker!")

</div>

---

**说明**

🐳 Docker / Compose \
☸️ Kubernetes

名称 | 描述 | 快速部署
:---: | :--- | :---:
[acme.sh](https://github.com/acmesh-official/acme.sh) | 自动解析并申请证书，支持泛域名证书 | [☸️](https://github.com/y0ngb1n/dockerized/tree/master/kubernetes/system/acmesh)
[AdGuard Home](https://github.com/AdguardTeam/AdGuardHome) | 一款全网广告拦截与反跟踪软件，安全过滤家中广告 | [🐳](https://github.com/y0ngb1n/dockerized/tree/master/docker/apps/adguard-home)
[AList](https://github.com/OpenListTeam/OpenList) | 支持多存储的文件列表程序 | [🐳](https://github.com/y0ngb1n/dockerized/tree/master/docker/apps/alist)
[Beancount](https://github.com/beancount/beancount) | 优秀的开源复式记账工具 | [🐳](https://github.com/y0ngb1n/dockerized/tree/master/docker/apps/beancount)
[Vaultwarden](https://github.com/dani-garcia/vaultwarden) | 轻量、安全、私有的密码管理服务 | [☸️](https://github.com/y0ngb1n/dockerized/tree/master/kubernetes/apps/vaultwarden) [🐳](https://github.com/y0ngb1n/dockerized/tree/master/docker/apps/bitwarden)
[Blocky](https://github.com/0xERR0R/blocky) | 轻量级的 DNS 代理工具，支持 DoT/DoH 加密以及广告过滤 | [🐳](https://github.com/y0ngb1n/dockerized/tree/master/docker/apps/blocky)
[Cloudflare Tunnel](https://github.com/cloudflare/cloudflared) | Cloudflare 出品的一款轻量级代理工具 | [🐳](https://github.com/y0ngb1n/dockerized/tree/master/docker/apps/cloudflare-tunnel)
[dae](https://github.com/daeuniverse/dae) | 一款基于 eBPF 技术的 Linux 高性能透明代理工具 | [🐳](https://github.com/y0ngb1n/dockerized/tree/master/docker/apps/dae)
[Fail2ban](https://github.com/fail2ban/fail2ban) | 自动封禁暴力破解的安全防护工具 | [☸️](https://github.com/y0ngb1n/dockerized/tree/master/kubernetes/system/fail2ban)
[LeafWiki](https://github.com/perber/leafwiki) | 一个轻量、开源、以 Markdown 文件为核心的自托管知识库 | [☸️](https://github.com/y0ngb1n/dockerized/tree/master/kubernetes/apps/leafwiki)
[Pocket ID](https://github.com/pocket-id/pocket-id) | 一个简单的 OIDC 提供程序，支持且仅允许用户使用 Passkeys 进行身份验证 | [☸️](https://github.com/y0ngb1n/dockerized/tree/master/kubernetes/apps/pocket-id)
[Tailscale](https://tailscale.com/) | 搭建属于自己的虚拟局域网 | [🐳](https://github.com/y0ngb1n/dockerized/tree/master/docker/apps/tailscale) ☸️
[Tinyauth](https://tinyauth.app/) | 轻量的身份验证中间件 | [☸️](https://github.com/y0ngb1n/dockerized/tree/master/kubernetes/apps/tinyauth)
[SonarQube](https://www.sonarsource.com/products/sonarqube/) | 代码质量检测平台 | [🐳](https://github.com/y0ngb1n/dockerized/tree/master/docker/apps/sonarqube)
[ZeroTier](https://www.zerotier.com/) | 搭建属于自己的虚拟局域网 | [🐳](https://github.com/y0ngb1n/dockerized/tree/master/docker/apps/zerotier)

---

## 一键安装 𝑫𝒐𝒄𝒌𝒆𝒓 [![GitHub stable release](https://flat.badgen.net/github/release/moby/moby/stable?label)](https://github.com/moby/moby/releases)

```bash
curl -fsSL https://get.docker.com | bash
```

## 一键安装 𝑪𝒐𝒎𝒑𝒐𝒔𝒆 [![GitHub stable release](https://flat.badgen.net/github/release/docker/compose/stable?label&color=red)](https://github.com/docker/compose/releases)

Compose 既然是一个 Python 应用，自然也可以直接用容器来执行它：

```bash
export DOCKER_COMPOSE_VERSION=1.24.0
curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/run.sh > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```

## ⚗️ 资源推荐

### 镜像加速

- [Docker Hub 镜像加速器](https://gist.github.com/y0ngb1n/7e8f16af3242c7815e7ca2f0833d3ea6)

### 在线体验

- [Play with Docker](https://labs.play-with-docker.com/)
- [Play with Kubernetes](https://labs.play-with-k8s.com/)
- [Play with iximiuz Labs](https://labs.iximiuz.com/playgrounds)

### 实用工具

| 库名                                                      | 简述                         | Stars                                                                          |
| --------------------------------------------------------- | ---------------------------- | ------------------------------------------------------------------------------ |
| [watchtower](https://github.com/containrrr/watchtower)    | 自动更新 Docker 容器         | ![GitHub stars](https://flat.badgen.net/github/stars/containrrr/watchtower)    |
| [docker-gc](https://github.com/spotify/docker-gc)         | 容器和镜像的垃圾回收器       | ![GitHub stars](https://flat.badgen.net/github/stars/spotify/docker-gc)        |
| [docker-slim](https://github.com/docker-slim/docker-slim) | 面向容器的神奇减肥药         | ![GitHub stars](https://flat.badgen.net/github/stars/docker-slim/docker-slim)  |
| [ctop](https://github.com/bcicen/ctop)                    | 容器的类顶层接口             | ![GitHub stars](https://flat.badgen.net/github/stars/bcicen/ctop)              |
| [portainer](https://github.com/portainer/portainer)       | 一款 Docker 可视化管理工具   | ![GitHub stars](https://flat.badgen.net/github/stars/portainer/portainer)      |
| [lazydocker](https://github.com/jesseduffield/lazydocker) | 基于终端的一个可视化查询工具 | ![GitHub stars](https://flat.badgen.net/github/stars/jesseduffield/lazydocker) |

### 开源仓库

| 库名                                                                 | 简述                                                                                                            | Stars                                                                                 |
| -------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| [docker-cheat-sheet](https://github.com/wsargent/docker-cheat-sheet) | Docker Cheat Sheet                                                                                              | ![GitHub stars](https://flat.badgen.net/github/stars/wsargent/docker-cheat-sheet)     |
| [docker_practice](https://github.com/yeasy/docker_practice)          | Docker — 从入门到实践                                                                                           | ![GitHub stars](https://flat.badgen.net/github/stars/yeasy/docker_practice)           |
| [awesome-docker](https://github.com/veggiemonk/awesome-docker)       | A curated list of Docker resources and projects                                                                 | ![GitHub stars](https://flat.badgen.net/github/stars/veggiemonk/awesome-docker)       |
| [awesome-selfhosted](https://github.com/Kickball/awesome-selfhosted) | Selfhosting is the process of locally hosting and managing applications instead of renting from SaaS providers. | ![GitHub stars](https://flat.badgen.net/github/stars/Kickball/awesome-selfhosted)     |
| [distroless](https://github.com/GoogleContainerTools/distroless)     | Language focused docker images, minus the operating system                                                      | ![GitHub stars](https://flat.badgen.net/github/stars/GoogleContainerTools/distroless) |
| [gcr](https://github.com/mritd/gcr)                                  | [GCR](https://gcr.io/) 同步仓库                                                                                 | ![GitHub stars](https://flat.badgen.net/github/stars/mritd/gcr)                       |

### 同类仓库

| 库名                                                   | 简述                                                    | Stars                                                                      |
| ------------------------------------------------------ | ------------------------------------------------------- | -------------------------------------------------------------------------- |
| [dockerfiles](https://github.com/jessfraz/dockerfiles) | Various Dockerfiles I use on the desktop and on servers | ![GitHub stars](https://flat.badgen.net/github/stars/jessfraz/dockerfiles) |
| [dockerfiles](https://github.com/vimagick/dockerfiles) | A collection of delicious docker recipes                | ![GitHub stars](https://flat.badgen.net/github/stars/vimagick/dockerfiles) |
| [dockerfile](https://github.com/mritd/dockerfile)      | 该仓库存放了作者工作、生活中需要用到的 Dockerfile       | ![GitHub stars](https://flat.badgen.net/github/stars/mritd/dockerfile)     |

### Dockerized 推动者

| 维护者                                     | 简述                                |
| ------------------------------------------ | ----------------------------------- |
| [@bitnami](https://bitnami.com/containers) | Bitnami Container Images for Docker |
| [@sameersbn](https://github.com/sameersbn) | Software Engineer @bitnami          |

### Kubernetes ([K8s](https://k8s.io))

| 库名                                                                                                    | 简述                                          | Stars                                                                                              |
| ------------------------------------------------------------------------------------------------------- | --------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| [awesome-kubernetes](https://github.com/ramitsurana/awesome-kubernetes)                                 | A curated list for awesome kubernetes sources | ![GitHub stars](https://flat.badgen.net/github/stars/ramitsurana/awesome-kubernetes)               |
| [kubernetes-learning](https://github.com/cnych/kubernetes-learning)                                     | 从 Docker 到 Kubernetes 进阶                  | ![GitHub stars](https://flat.badgen.net/github/stars/cnych/kubernetes-learning)                    |
| [follow-me-install-kubernetes-cluster](https://github.com/opsnull/follow-me-install-kubernetes-cluster) | 和我一步步部署 Kubernetes 集群                | ![GitHub stars](https://flat.badgen.net/github/stars/opsnull/follow-me-install-kubernetes-cluster) |
| [kubernetes-handbook](https://github.com/rootsongjc/kubernetes-handbook)                                | Kubernetes 中文指南/云原生应用架构实践手册    | ![GitHub stars](https://flat.badgen.net/github/stars/rootsongjc/kubernetes-handbook)               |
| [kubernetes-handbook](https://github.com/feiskyer/kubernetes-handbook)                                  | Kubernetes 指南                               | ![GitHub stars](https://flat.badgen.net/github/stars/feiskyer/kubernetes-handbook)                 |
| [kubernetes-basicLearning](https://github.com/knrt10/kubernetes-basicLearning)                          | 从 0 开始教你学会 K8S                         | ![GitHub stars](https://flat.badgen.net/github/stars/knrt10/kubernetes-basicLearning)              |
