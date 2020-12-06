# [Grafana](https://grafana.com/) - 一个监控仪表系统，定制属于你的仪表盘

> 当前版本为 **v7.3.4**，源镜像最新版本 [![](https://flat.badgen.net/github/tag/bitnami/bitnami-docker-grafana?icon=github&label=bitnami/bitnami-docker-grafana)](https://github.com/bitnami/bitnami-docker-grafana)

![Hello Grafana!](https://i.loli.net/2020/12/06/2qfhBVXTyGSF9sI.png)

---

## TL;DR;

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
mkdir -p /usr/local/dockerized/grafana ; cd $_
git svn clone https://github.com/y0ngb1n/dockerized/trunk/grafana .
docker-compose up -d
```

通过以下方式访问 Grafana 的管理面板：

- `http://<IP_ADDRESS_OF_YOUR_SERVER>:8848`

---

## 反向代理配置

### Nginx 配置如下

```conf
# https://grafana.com/tutorials/run-grafana-behind-a-proxy/
location /grafana/ {
  proxy_pass http://127.0.0.1:8848/;
}
```

---

## 参考资料

- https://www.qikqiak.com/post/grafana-usage-in-k8s/