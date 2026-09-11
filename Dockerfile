FROM alpine:3.18
RUN apk add --no-cache shadowsocks-libev
ENV METHOD=aes-256-gcm
ENV PASSWORD=Uganda2026!
CMD ss-server -s 0.0.0.0 -p ${PORT} -k ${PASSWORD} -m ${METHOD} -u
