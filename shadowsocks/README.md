# [Shadowsocks](https://github.com/shadowsocks/shadowsocks-libev) - 科学上网

> 当前版本为 **v3.3.4**，源镜像最新版本 [![](https://flat.badgen.net/github/tag/EasyPi/docker-shadowsocks-libev?icon=github&label=EasyPi/docker-shadowsocks-libev)](https://github.com/EasyPi/docker-shadowsocks-libev)

![Hello Shadowsocks!](https://i.loli.net/2020/08/22/Z3f7rcFdXtyMO1B.png)

---

## 🚀️ 广而告之︲真香

[![Hello Vultr!](https://www.vultr.com/media/banners/banner_728x90.png)](https://www.vultr.com/?ref=7305362)

Vultr VPS 推出了 2020 年最新的限时促销活动，👆🏻[「新用户」注册并充值 5 美元以上，即可获得 100 美元的免费赠送金额！](https://www.vultr.com/?ref=7305362)力度相当巨大！！ (去年仅送 $50) 用于建站、学习、自建网盘或各种网络服务等等都很实用。有购买海外 VPS 需求的同学就得抓紧机会了。

- 具体规则是「**新用户**」注册后，进入后台的「Billing」页面，至少充值 5 美元 (信用卡 5 美元，支付宝 / 微信支付 / PayPal 等渠道至少充值 10 美元) 才能激活账号。
- **你的账号必须充值后才算“激活”完成，才能获赠使用金。**

---

## 🛫 使用方式︲上车

```console
# On x86 server (1.2.3.4)
$ docker-compose up -d server

# On x86 client (192.168.1.234)
$ docker-compose up -d client

# On arm client (192.168.1.254)
$ docker-compose up -d client-arm

# On any LAN PC (192.168.1.XXX)
$ curl -x socks5h://192.168.1.234:1080 https://www.youtube.com/
$ curl -x socks5h://192.168.1.254:1080 https://www.youtube.com/
```

## 🔗️ 参考链接

- https://github.com/haoel/haoel.github.io
- https://gist.github.com/biezhi/45fac901f02f7c867e46aecd41076d70
- https://github.com/EasyPi/docker-shadowsocks-libev
- https://github.com/mritd/dockerfile/tree/master/shadowsocks
- [Shadowsocks 终极使用指南](https://shadowsockshelp.github.io/Shadowsocks/)
