# [You-Get](https://github.com/soimort/you-get) 最新版本

[![Official repository](https://img.shields.io/badge/official_repo-soimort/you--get-brightgreen.svg?logo=github&logoColor=white&style=flat-square)](https://github.com/soimort/you-get)
[![Official newest release](https://img.shields.io/github/release/soimort/you-get.svg?label=official%20newest%20release&style=flat-square)](https://github.com/soimort/you-get/releases)
[![Docker build](https://img.shields.io/docker/automated/y0ngb1n/you-get.svg?style=flat-square)](https://hub.docker.com/r/y0ngb1n/you-get)
[![Docker pulls](https://img.shields.io/docker/pulls/y0ngb1n/you-get.svg?style=flat-square)](https://hub.docker.com/r/y0ngb1n/you-get)

> 截至目前该镜像为 **v0.4.1205** 版本

## 打开姿势

```bash
docker run --rm y0ngb1n/you-get -i https://www.bilibili.com/video/av30682159/
```

## 下载视频

```bash
docker run --rm -d -v /path/downloads:/downloads y0ngb1n/you-get https://www.bilibili.com/video/av30682159/
```

指定下载的目录，挂载 `/path/downloads` 进行指定

## 其它姿势

- [ ] 命令别名
