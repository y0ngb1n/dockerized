# LeafWiki

[LeafWiki](https://github.com/perber/leafwiki) 是一款轻量、开源、自托管的 Markdown Wiki，采用文件夹树状结构管理知识，适合个人知识库、团队文档和 Homelab。

## TL;DR;

```bash
helm lint .
helm upgrade --install leafwiki . --dependency-update \
  --namespace app --create-namespace
# enjoy the ride! 😎
helm uninstall leafwiki -n app
```

## 🔗️ 参考链接

- https://leafwiki.com/
