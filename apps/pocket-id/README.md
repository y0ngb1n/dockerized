# Pocket ID

[Pocket ID](https://github.com/pocket-id/pocket-id) 是一个简单的 OIDC 提供程序，支持且仅允许 用户使用 Passkeys 进行身份验证，这意味着使用它在支持自定义 OIDC 供应商的应用中，可以完全无密码登录。

对于不支持自定义 OIDC 单点登录的应用，我们可以使用 [Tinyauth](https://github.com/y0ngb1n/dockerized/tree/master/apps/tinyauth) 作为身份验证中间件，来调用 Pocket ID 验证。

## TL;DR;

```bash
helm lint .
helm upgrade --install pocket-id . --dependency-update \
  --namespace app --create-namespace
# enjoy the ride! 😎
helm uninstall pocket-id -n app
```

## 🔗️ 参考链接

- [Pocket ID Getting Started]](https://pocket-id.org/docs)
- [自托管部署 Pocket ID 与 Tinyauth 完全指南](https://blog.dejavu.moe/posts/build-passkeys-identity-system-with-pocketid-x-tinyauth/)
