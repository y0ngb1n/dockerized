# Vaultwarden

![](https://bitwarden.com/assets/3WyxzjR9LxPQupg8BA35BU/1dcba6b3fb550687ae8be8a997c72c79/HomepageHero.png?w=1400&fm=avif)

[Vaultwarden](https://github.com/dani-garcia/vaultwarden) 是一款轻量、开源、自托管的 Bitwarden 兼容密码管理服务器，支持安全存储和管理密码、密钥及敏感信息。

## TL;DR;

```bash
helm lint .
helm upgrade --install vaultwarden . --dependency-update \
  --namespace app --create-namespace
# enjoy the ride! 😎
helm uninstall leafwiki -n app
```

## 🔗️ 参考链接

- https://github.com/dani-garcia/vaultwarden
- https://bitwarden.com/help/
