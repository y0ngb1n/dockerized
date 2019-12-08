# [SonarQube](https://www.sonarqube.org/) - 代码质量检测平台

想成为一名优秀的工程师，代码质量一定要过关！

> 当前版本为 **v7**，源镜像最新稳定版本 [![GitHub repo](https://flat.badgen.net/github/release/bitnami/bitnami-docker-sonarqube?icon=github&label=bitnami/sonarqube)](https://github.com/bitnami/bitnami-docker-sonarqube)

[![Hello SonarQube](https://www.sonarqube.org/index/hero-image.png "Hello SonarQube!")](https://www.sonarqube.org/)

---

## TL;DR;

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
docker run -d --name sonarqube -p 9000:9000 sonarqube
```

By default you can login as `admin` with password `admin`.

---

## ⚙️️ 依赖环境

- postgresql
- elasticsearch

## 🚗️ 使用指南

```bash
# 获取源码
mkdir -p /usr/local/docker/sonarqube ; cd $_
git svn clone https://github.com/y0ngb1n/dockerized/trunk/sonarqube .
docker-compose -f docker-compose.yml up -d
```

1. 打开 http://localhost:9000/
2. 账号：`admin` 密码：`password123`
3. 点击 "Log in" 

## 🔗️ 参考链接

- https://docs.sonarqube.org/latest/
- https://www.sonarsource.com/
- https://registry.hub.docker.com/_/sonarqube/
- https://github.com/bitnami/bitnami-docker-sonarqube
- [SonarQube - 代码质量检测平台](https://www.jianshu.com/p/a1450aeb3379)，by Anoyi
- [SonarQube - 中文插件安装](https://www.jianshu.com/p/6cc4632628b1)，by Anoyi
