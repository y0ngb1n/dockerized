# [Traefik](https://traefik.io/) - The Cloud Native Edge Router

![Traefik Architecture](https://docs.traefik.io/assets/img/traefik-architecture.png)

---

## TL;DR;

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
curl -sSL https://raw.githubusercontent.com/y0ngb1n/dockerized/master/traefik/docker-compose.example.yml > docker-compose.yml
docker-compose up -d
```

---

## 🚀️ 使用指南

```bash
# 获取源码
mkdir -p /usr/local/docker/traefik ; cd $_
git svn clone https://github.com/y0ngb1n/dockerized/trunk/traefik .

# 创建网络
docker network create traefik

# 启动服务
docker-compose up -d
```

- 记得将 `conf/traefik.yml` 与 `conf/dync_conf.yml` 配置文件中所涉及的域名修改为你想要域名。

## 🔐️ 支持 Let’s Encrypt

`acme.json` 用来存放 Let’s Encrypt 的凭证信息，该文件的权限必须为 `600`（[参考文档](https://docs.traefik.io/https/acme/#storage)），否则无法签发证书。

```bash
# 主动挂载时须要先执行以下命令 / 或忽略以下命令，让容器自动创建
touch ./conf/acme.json && chmod 600 ./conf/acme.json
```

启动服务后可以看到 `acme.json` 已经记录了各个域名的凭证信息，按需备份此文件，就不用一直申请了。

## 🔗️ 参考链接

+ https://docs.traefik.io/ 
+ https://www.qikqiak.com/post/traefik2-ga/
+ https://blog.wu-boy.com/2019/01/deploy-service-using-traefik-and-docker/
+ https://soulteary.com/2018/06/11/use-server-side-discovery-improve-development.html
+ https://soulteary.com/2018/09/07/some-additional-details-using-traefik.html
+ [Nginx、HAProxy 和 Traefik 负载均衡能力对比](https://zhuanlan.zhihu.com/p/41354937)
+ https://github.com/Praqma/learn-traefik
+ https://medium.com/@containeroo/traefik-2-0-docker-a-simple-step-by-step-guide-e0be0c17cfa5
