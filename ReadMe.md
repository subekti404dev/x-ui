# X-UI Panel
Sebuah aplikasi berupa panel dashboard untuk mempermudah kita dalam membuat VPN V2ray seperti vmess, vless, trojan, dsb. Cukup install docker di VPS, lalu jalankan container dengan image ini. 
Repository ini merupakan alih bahasa dari sini:
https://github.com/vaxilu/x-ui

## Run Docker Container
```bash
docker run --restart=always --name x-ui-panel -d -p 43210:54321 -p 28001:8001/tcp -p 28001:8001/udp --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /etc/x-ui:/etc/x-ui -v /docker-data/x-ui:/cert --privileged subekti13/x-ui-panel
```
