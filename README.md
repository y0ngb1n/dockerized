# 🐳 Dockerized

一处构建，处处运行

## 一键安装 Docker [![GitHub release](https://img.shields.io/github/release/docker/docker-ce.svg)](https://github.com/docker/docker-ce/releases)

```bash
curl -fsSL https://get.docker.com | bash
```

## 一键安装 Docker Compose [![GitHub release](https://img.shields.io/github/release/docker/compose.svg)](https://github.com/docker/compose/releases)

Compose 既然是一个 Python 应用，自然也可以直接用容器来执行它：

```bash
export DOCKER_COMPOSE_VERSION=1.23.2
curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/run.sh > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```

## ⚗️ 资源推荐

### 开源仓库

库名 | 简述 | Stars
--- | --- | ---
[yeasy/docker_practice](https://github.com/yeasy/docker_practice) | Docker — 从入门到实践 | ![GitHub stars](https://img.shields.io/github/stars/yeasy/docker_practice.svg?style=flat-square)
[GoogleContainerTools/distroless](https://github.com/GoogleContainerTools/distroless) | Language focused docker images, minus the operating system | ![GitHub stars](https://img.shields.io/github/stars/GoogleContainerTools/distroless.svg?style=flat-square)
[vimagick/dockerfiles](https://github.com/vimagick/dockerfiles) | A collection of delicious docker recipes | ![GitHub stars](https://img.shields.io/github/stars/vimagick/dockerfiles.svg?style=flat-square)
[mritd/dockerfile](https://github.com/mritd/dockerfile) | 该仓库存放了作者工作、生活中需要用到的 Dockerfile | ![GitHub stars](https://img.shields.io/github/stars/mritd/dockerfile.svg?style=flat-square)
[mritd/gcr](https://github.com/mritd/gcr) | [GCR](https://gcr.io/) 同步仓库 | ![GitHub stars](https://img.shields.io/github/stars/mritd/gcr.svg?style=flat-square)

### Dockerized 推动者

维护者 | 简述
--- | ---
[@bitnami](https://bitnami.com/containers) | Bitnami Container Images for Docker
[@sameersbn](https://github.com/sameersbn) | Software Engineer @bitnami
