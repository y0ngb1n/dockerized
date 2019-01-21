# You-Get 最新版本

[![Project source](https://img.shields.io/badge/source-soimort/you--get-green.svg?logo=github&logoColor=white&style=flat-square)](https://github.com/soimort/you-get)
[![GitHub release](https://img.shields.io/github/release/soimort/you-get.svg?style=flat-square)](https://github.com/soimort/you-get/releases)

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
