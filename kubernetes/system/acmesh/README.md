# acme.sh

[acme.sh](https://github.com/acmesh-official/acme.sh) 实现了 `acme` 协议，可以从 `ZeroSSL`，`Let's Encrypt` 等 CA 生成免费的证书，支持泛域名证书。

该模板基于 [Helm](https://helm.sh/) 快速创建 Kubernetes CronJob，用于**自动申请并续期 TLS 证书**。使用 `acme.sh + Let’s Encrypt (DNS-01 / Cloudflare)` 定期签发 ECC TLS 证书，并在证书生成后**自动更新指定命名空间中的 Kubernetes TLS Secret**，实现证书的无人值守管理与自动轮换。

## TL;DR;

```bash
helm lint .
helm upgrade --install acmesh . --dependency-update \
  --namespace app --create-namespace
# enjoy the ride! 😎
helm uninstall acmesh -n app
```

## 🔗️ 参考链接

- https://github.com/acmesh-official/acme.sh/wiki
- [使用 acme.sh 配置自动续签 SSL 证书](https://u.sb/acme-sh-ssl/)
- [基于 docker 环境 acme.sh 申请 Let's Encrypt 泛域名证书的交互式一键脚本](https://gist.github.com/stilleshan/02d8652ce320941e497d378a04ecf016)