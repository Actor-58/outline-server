FROM shadowsocks/shadowsocks-libev:latest
ENV METHOD=aes-256-gcm
ENV PASSWORD=Uganda2026!
ENTRYPOINT ss-server -s 0.0.0.0 -p $PORT -k $PASSWORD -m $METHOD
