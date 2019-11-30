# [Bitwarden](https://bitwarden.com/) - 私人密码管理器

> 当前版本为 **1.12.0**，源镜像最新版本 [![GitHub repo](https://flat.badgen.net/github/release/dani-garcia/bitwarden_rs?icon=github&label=dani-garcia/bitwarden_rs)](https://github.com/dani-garcia/bitwarden_rs)

[![Hello Bitwarden](https://i.loli.net/2019/04/13/5cb1fe0ccafcc.jpg "Hello Bitwarden!")](https://bitwarden.com/)
<sup>Image by [Bitwarden](https://twitter.com/bitwarden) via [Twitter](https://twitter.com/bitwarden)</sup>

---

## TL;DR;

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
curl -sSL https://raw.githubusercontent.com/y0ngb1n/dockerized/master/bitwarden/docker-compose.yml > docker-compose.yml
docker-compose up -d
```

---

## ✨ 特性

👉 来自[大佬的良心结语](https://10101.io/2019/11/24/self-hosted-bitwarden)

- 这个 docker 镜像对于服务器的要求不高，个人使用的话，`1 CPU 512 RAM` 应该就可以跑了，又可以充分利用自己的服务器了
- 能用得上的大部分功能都有了，除了最基本的密码保存、上传附件等，官方需要付费使用的 `TOTP` 、密码检测等功能也都是可以直接使用的
- 数据在自己手里，可能会感觉会更安全点吧

## 🚀️ 使用指南

```bash
# 获取源码
mkdir -p /usr/local/docker/bitwarden ; cd $_
git svn clone https://github.com/y0ngb1n/dockerized/trunk/bitwarden .
docker-compose -f docker-compose.custom.yml up -d
```

如需自定义一些参数，是否允许开放注册等配置文件可参见 [`config.env`](./config.env)，参数解释：

- `SIGNUP_ALLOWED`：是否允许注册
- `INVITATIONS_ALLOWED`：是否允许组织邀请注册
- `ADMIN_TOKEN`：用户管理界面 (`/admin`)，可用于删除用户及邀请用户注册
- `ROCKET_TLS`：ssl 证书信息，同时需要配置 `-v /path/to/host/ssl/:/path/to/docker/ssl/` 卷，前者为宿主机 ssl 证书的位置，后者为容器证书位置
- `DOMAIN`：域名
- `LOG_FILE`、`LOG_LEVEL`、`EXTENDED_LOGGING`：日志保存文件路径以及日志等级定义
- `DATA_FOLDER`：docker 容器数据保存文件夹（默认为 `/data`），除了定义这个文件夹之外，还可以定义附件、图标缓存、数据库等参数
  - `DATABASE_URL`：数据库路径
  - `ATTACHMENT_FOLDER`：附件路径
  - `ICON_CACHE_FOLDER`：图标缓存路径

以上是我自己觉得需要的一些配置，更多参数可参考官方 [Wiki](https://github.com/dani-garcia/bitwarden_rs/wiki)。

## ⚙️️ 客户端配置

> TODO：绘制客户端配置流程图

## 📋 TODO

- [ ] 如何升级
- [ ] 如何备份
- [ ] 绘制客户端配置流程图
- [ ] 支持 nginx-proxy
- [ ] 支持 traefik

## 🕹 其它方案

- [Bitwarden](https://bitwarden.com/)：Bitwarden 官方服务
- [1Password](https://1password.com/)：知名密码管理软件 1Password
- [password-generator](https://github.com/mrjooz/password-generator)：一款密码在线生成工具

## 🔗️ 参考链接

- [為什麼今天就該開始使用密碼管理器](https://medium.com/@doraemon801031/%E7%82%BA%E4%BB%80%E9%BA%BC%E4%BB%8A%E5%A4%A9%E5%B0%B1%E8%A9%B2%E9%96%8B%E5%A7%8B%E4%BD%BF%E7%94%A8%E5%AF%86%E7%A2%BC%E7%AE%A1%E7%90%86%E5%99%A8-9884f4de4639)
- [Best Password Manager: LastPass vs Dashlane vs Bitwarden vs 1Password](https://www.codeinwp.com/blog/best-password-manager/)
- [使用 bitwarden_rs 搭建自托管的密码服务器](https://blog.mynook.info/post/selfhost-bitwarden/)
- [Bitwarden 服务端搭建记录](https://10101.io/2019/11/24/self-hosted-bitwarden)
- [bitwarden_rs wiki](https://github.com/dani-garcia/bitwarden_rs/wiki)
  - [Proxy examples](https://github.com/dani-garcia/bitwarden_rs/wiki/Proxy-examples)
  - [Backing up your vault](https://github.com/dani-garcia/bitwarden_rs/wiki/Backing-up-your-vault)
  - [Updating the bitwarden image](https://github.com/dani-garcia/bitwarden_rs/wiki/Updating-the-bitwarden-image)
  - [Kubernetes deployment](https://github.com/dani-garcia/bitwarden_rs/wiki/Kubernetes-deployment)
- [r/Bitwarden](https://www.reddit.com/r/Bitwarden/)
