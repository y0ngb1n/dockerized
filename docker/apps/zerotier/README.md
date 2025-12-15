# [ZeroTier](https://www.zerotier.com/) - 搭建属于自己的虚拟局域网

<p align="center">
    <img src="https://i.loli.net/2020/05/10/4Hr63RNs91zoUXF.png" width="100%"/>
</p>

---

## TL;DR;

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
mkdir -p /usr/local/dockerized/zerotier ; cd $_
git svn clone https://github.com/y0ngb1n/dockerized/trunk/zerotier .
docker-compose up -d
```

## 🔖 专有名词

<p align="center">
    <img src="https://i.loli.net/2020/05/10/CDzj61GITi49ZWQ.png" width="100%"/>
</p>

ZeroTier 官方搭建了一个行星根服务器叫做 `行星 Planet`，行星根服务器唯一的且是免费的，它记录了所有的路径信息。除此之外还有 12 个遍布全球的付费根服务器。所以使用免费套餐，连接时的延迟可能会很高，尤其是移动，毕竟 Earth 在国外。不过 ZeroTier 能自己创建根服务器 `卫星 Moon`，提供了一个解决网络延时、卡顿和失联的可能解决方案。连接行星或卫星的服务器成为 `叶子节点 Leaf`。—— [Newlearner365](https://www.newlearner.site/2019/07/30/zerotier.html)

- `PLANET`：行星服务器，ZeroTier 根服务器；
- `  MOON`：卫星服务器，用户自建的私有根服务器，起到代理加速的作用；
- `  LEAF`：叶子节点，连接行星或卫星的服务器。

## 🛰 ZeroTier Moons [![Docker Hub](https://flat.badgen.net/docker/metadata/version/y0ngb1n/zerotier-moon/latest?icon=docker)](https://hub.docker.com/r/y0ngb1n/zerotier-moon)

💗️ 感谢开源：

- [Spikhalskiy/zerotier-containerized](https://github.com/Spikhalskiy/zerotier-containerized)
- [rwv/docker-zerotier-moon](https://github.com/rwv/docker-zerotier-moon)

### 🚀 使用方式

```console
# 0. 部署 MOON 服务器
$ curl -sSL https://raw.githubusercontent.com/y0ngb1n/dockerized/master/zerotier/docker-compose.yml > docker-compose.yml
$ export HOST_IPV4_ADDR=2.3.3.3
$ docker-compose up -d

# 1. 查看提示日志
$ docker logs zertier-moon
IPv4 address: 2.3.3.3
Your ZeroTier moon id is fd09b1b0b3, you could orbit moon using "zerotier-cli orbit fd09b1b0b3 fd09b1b0b3"

# 2. 将客户端加入新建的 MOON
# sudo zerotier-cli orbit <id> <id>
$ sudo zerotier-cli orbit fd09b1b0b3 fd09b1b0b3
200 orbit OK

# 3. 查看组网信息
$ sudo zerotier-cli listpeers
200 listpeers <ztaddr> <path> <latency> <version> <role>
200 listpeers fd09b1b0b3 2.3.3.3/9993;3750;3750 35 1.2.4 MOON # 出现新 MOON 的公网 IP 节点则说明已组网成功
200 listpeers 17d709436c 35.236.27.3/33526;2332;2332 326 1.4.6 LEAF
200 listpeers 34e0a5e174 147.75.92.2/9993;8830;9330 26 - PLANET
...
```

## 🕸️ ZeroTier One

### 创建 `zerotier-one` 客户端

```bash
docker run --name=zerotier-one -d                \
  --device=/dev/net/tun --net=host               \
  --cap-add=NET_ADMIN --cap-add=SYS_ADMIN        \
  -v /var/lib/zerotier-one:/var/lib/zerotier-one \
  --restart unless-stopped                       \
  zyclonite/zerotier
```

### 使用方式

```console
docker exec zerotier-one zerotier-cli info

# 将客户端加入现有的网络
docker exec zerotier-one zerotier-cli join <your_network_id>

# 将客户端加入现有的 MOON
docker exec zerotier-one zerotier-cli orbit fd09b1b0b3 fd09b1b0b3

# 查看组网信息
docker exec zerotier-one zerotier-cli listnetworks
docker exec zerotier-one zerotier-cli listpeers

# 解锁更多
docker exec zerotier-one zerotier-cli -h
```

## 🎮 推荐搭配

+ [微软远程桌面](https://www.iplaysoft.com/microsoft-remote-desktop.html) — 微软官方免费远程桌面控制 Windows 的软件 APP
+ [NoMachine](https://www.nomachine.com/) — 非常好用的远程桌面管理软件

## 🔗️ 参考链接

+ [远程办公：无需公网、无需服务端 5 分钟实现内网穿透](https://www.jianshu.com/p/bb4751534c1b)
+ [ZeroTier — P2P 内网穿透工具](https://www.newlearner.site/2019/07/30/zerotier.html)
+ [建立自定义 ZeroTier Moons 服务器](https://github.com/aturl/awesome-anti-gfw/blob/master/ZeroTier/ZeroTier_Moons.md)
+ 视频 | [异地组网不求人，OpenWrt 的 ZeroTier 插件玩法](https://youtu.be/OzKBXBwBrUQ), by 韩风Talk
+ 视频 | [ZeroTIer 路由器层面异地组网实践](https://youtu.be/TjVrjPfmnwA)
