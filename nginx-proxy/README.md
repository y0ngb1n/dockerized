# [Nginx Proxy](https://github.com/jwilder/nginx-proxy)<sup>－基于 Docker 的自动化网关</sup>

![](https://flat.badgen.net/github/tag/jwilder/nginx-proxy?icon=github&label=jwilder/nginx-proxy)

> 截至目前使用的镜像为 **v0.7.0** 版本

![Docker Love](./static/docker-love.png)

<sub>Image by [Mateusz Tarnawa's Blog](https://mtarnawa.org/2017/11/10/running-secured-private-docker-registry-nginx-proxy-letsencrypt/)</sub>

![HA Ddiagram Animated](./static/ha-diagram-animated.gif)

<sub>Image by [Justin Ellingwood](https://www.digitalocean.com/community/users/jellingwood) via [DigitalOcean Community](https://www.digitalocean.com/community/tutorials/understanding-nginx-http-proxying-load-balancing-buffering-and-caching)</sub>

## 快速上手

### 直接使用

**Docker Compose**

<details>
<summary><code>docker-compose.internal.yml</code></summary>

```yaml
version: '3'

services:
  nginx-proxy:
    image: jwilder/nginx-proxy
    ports:
      - "80:80"
    volumes:
      - /var/run/docker.sock:/tmp/docker.sock:ro

  whoami:
    image: jwilder/whoami
    environment:
      - VIRTUAL_HOST=whoami.local
```

</details>

```bash
mkdir -p /usr/local/docker/nginx-proxy ; cd $_
curl -sSL https://raw.githubusercontent.com/y0ngb1n/dockerized/master/nginx-proxy/docker-compose.internal.yml > docker-compose.internal.yml
docker-compose -f docker-compose.internal.yml up -d
```

**Try Usage**

```console
$ docker-compose -f docker-compose.internal.yml up -d
$ curl -H "Host: whoami.local" localhost
I'm 0714faf158a5
$ docker-compose -f docker-compose.internal.yml down
```

### 使用外部网络

**Create Network**

```bash
docker network create nginx-proxy
```

**Docker Compose**

<details>
<summary><code>docker-compose.yml</code></summary>

```yaml
version: '3'

services:
  nginx-proxy:
    container_name: nginx-proxy
    image: jwilder/nginx-proxy
    restart: always
    networks:
      - nginx-proxy
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - /var/run/docker.sock:/tmp/docker.sock:ro
      - ./config/conf.d:/etc/nginx/conf.d
      - ./config/vhost.d:/etc/nginx/vhost.d

networks:
  nginx-proxy:
    external: true
```

</details>

```bash
mkdir -p /usr/local/docker/nginx-proxy ; cd $_
curl -sSL https://raw.githubusercontent.com/y0ngb1n/dockerized/master/nginx-proxy/docker-compose.yml > docker-compose.yml
docker-compose up -d
```

<details>
<summary><code>docker-compose.external.yml</code></summary>

```yaml
version: '3'

services:
  whoami:
    image: jwilder/whoami
    networks:
      - nginx-proxy
    environment:
      - VIRTUAL_HOST=whoami.local

networks:
  nginx-proxy:
    external: true
```

</details>

```bash
curl -sSL https://raw.githubusercontent.com/y0ngb1n/dockerized/master/nginx-proxy/docker-compose.external.yml > docker-compose.external.yml
docker-compose -f docker-compose.external.yml up -d
```

**Try Usage**

```console
$ docker-compose up -d
$ docker-compose -f docker-compose.external.yml up -d
$ curl -H "Host: whoami.local" localhost
I'm 0350fcfa4caf
$ docker-compose down
$ docker-compose -f docker-compose.external.yml down
```

---

解锁更多姿势请参考：

- [官方文档](https://github.com/jwilder/nginx-proxy)

## 其它选择

- [使用服务发现改善开发体验](https://soulteary.com/2018/06/11/use-server-side-discovery-improve-development.html), by 苏洋 —— 介绍了如何将 [Traefik](https://traefik.io/) 作为服务网关
