# [Prometheus](https://prometheus.io/) - 一个开源系统监控和警报系统

> 当前版本为 **v2.23.0**，源镜像最新版本 [![](https://flat.badgen.net/github/tag/bitnami/bitnami-docker-prometheus?icon=github&label=bitnami/bitnami-docker-prometheus)](https://github.com/bitnami/bitnami-docker-prometheus)

![Hello Promethues!](https://i.loli.net/2020/12/06/umDLPQXgI8b5BFk.png)

![Promethues Architecture](https://prometheus.io/assets/architecture.png)

---

## TL;DR;

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
mkdir -p /usr/local/dockerized/prometheus ; cd $_
git svn clone https://github.com/y0ngb1n/dockerized/trunk/prometheus .
docker-compose up -d
```

通过以下方式访问 Prometheus 的管理面板：

- `http://<IP_ADDRESS_OF_YOUR_SERVER>:9090`

---

## 反向代理配置

### Nginx 配置如下

```conf
# https://www.prometheus.io/docs/guides/basic-auth/
# https://github.com/prometheus-community/prometheus-playground/tree/master/nginx
location /prometheus {
  proxy_pass http://127.0.0.1:9090/;
}
```

---

## Exporters and Integrations

- https://prometheus.io/docs/instrumenting/exporters/

## Chrome Metrics 语法高亮插件

- https://github.com/fhemberger/prometheus-formatter

![](https://raw.githubusercontent.com/fhemberger/prometheus-formatter/master/_images/after.png)

---

## 参考资料

- https://www.qikqiak.com/post/blackbox-exporter-on-prometheus/
- https://www.qikqiak.com/post/prometheus-book/
- https://yunlzheng.gitbook.io/prometheus-book/
- https://songjiayang.gitbooks.io/prometheus/