# Fail2Ban

使用 [Fail2ban](https://github.com/fail2ban/fail2ban) 保护我们的服务器免受 SSH 爆破，并合理封禁异常的 IP 地址。不仅支持 SSH，还支持 Apache、Nginx、Gitea、Vaultwarden、Traefik、Emby 等多种服务的防护。还可配置在封禁 IP 时执行 DIY 脚本 或发送通知给管理员。

![](demo.jpg)

## TL;DR;

```bash
helm lint .
helm upgrade --install fail2ban . --dependency-update \
  --namespace app --create-namespace
# enjoy the ride! 😎
helm uninstall fail2ban -n app
```

```bash
kubectl exec -n app -it ds/fail2ban -- ls -R /config

# 查看日志
kubectl -n app logs -f daemonset/fail2ban
kubectl -n app exec -it ds/fail2ban -- tail -n 50 /config/log/fail2ban/fail2ban.log

# 检查 Fail2ban 是否正常封 IP
kubectl exec -n app -it ds/fail2ban -- fail2ban-client status
kubectl exec -n app -it ds/fail2ban -- fail2ban-client status sshd
kubectl exec -n app -it ds/fail2ban -- fail2ban-client status --all
kubectl exec -n app -it ds/fail2ban -- fail2ban-client set sshd banip 1.2.3.4

# 调试 iptables
kubectl exec -n app -it ds/fail2ban -- iptables -L INPUT -n -v
kubectl exec -n app -it ds/fail2ban -- iptables -L f2b-sshd -n -v
```

## ⚙️ 参考配置

- https://github.com/linuxserver/fail2ban-confs

## 🔗️ 参考链接

- https://github.com/linuxserver/docker-fail2ban
- https://github.com/crazy-max/docker-fail2ban
- https://linux.do/t/topic/48677