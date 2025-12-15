# [MinIO](https://docs.min.io/cn/minio-quickstart-guide.html) - 搭建私有化对象存储服务

[![MinIO](https://i.loli.net/2020/05/13/itmGPvNwZBCq4lR.png "Hello MinIO!")](https://min.io/)
<sup>Image by [Geek's Cookbook](https://geek-cookbook.funkypenguin.co.nz/recipes/minio/)</sup>

---

## TL;DR;

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
mkdir -p /usr/local/dockerized/minio ; cd $_
git svn clone https://github.com/y0ngb1n/dockerized/trunk/minio .
docker-compose up -d
```

通过以下方式访问 MinIO 的管理面板：

- `http://<IP_ADDRESS_OF_YOUR_MINIO>:9000`

## 🔗️ 参考链接

+ [MinIO 快速入门指南](https://docs.min.io/cn/minio-quickstart-guide.html)
+ [Minio - Funky Penguin's Geek Cookbook](https://geek-cookbook.funkypenguin.co.nz/recipes/minio/)
