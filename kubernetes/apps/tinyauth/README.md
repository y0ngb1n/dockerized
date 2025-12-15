# Tinyauth

[Tinyauth](https://github.com/steveiliop56/tinyauth) 是一个简单的 身份验证中间件，支持目前所有的主流代理服务器，比如 Nginx、Caddy 以及 Traefik。可以通过 Google、GitHub、LDAP、Pocket ID……作为提供商，为服务或入口添加易于使用的现代身份验证界面。

## TL;DR;

```bash
helm lint .
helm upgrade --install tinyauth . --dependency-update \
  --namespace app --create-namespace
# enjoy the ride! 😎
helm uninstall tinyauth -n app
```

## 🔗️ 参考链接

- [Tinyauth Getting Started](https://tinyauth.app/docs/getting-started)
- [自托管部署 Pocket ID 与 Tinyauth 完全指南](https://blog.dejavu.moe/posts/build-passkeys-identity-system-with-pocketid-x-tinyauth/)