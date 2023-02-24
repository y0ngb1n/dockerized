# [Cloudflare Tunnel](https://www.cloudflare.com/products/tunnel/) - Cloudflare 出品的一款轻量级代理工具

[![GitHub repo](https://github.com/cloudflare/cloudflared?icon=github&label=cloudflare/cloudflared)](https://github.com/cloudflare/cloudflared)

Cloudflare 公司推出的一款轻量级的代理工具，能够将本地主机上的应用程序安全地暴露在 Internet 上，从而实现通过 Cloudflare 的网络边缘进行访问和保护。

![argo-tunnel-diagram](https://www.cloudflare.com/static/2abebd6c9da8acb379053e938330c83e/argo-tunnel-diagram-2.svg#gh-light-mode-only)
![teams-access-newway-diagram](https://www.cloudflare.com/static/271b04de4eef2dba79682bf25f4a265f/teams-access-newway-diagram.svg#gh-dark-mode-only)

---

## TL;DR;

```bash
kubectl create ns cloudflare-tunnel
kubectl apply -f ./k8s
kubectl get all -n cloudflare-tunnel -owide
```
