FROM debian:bullseye-slim
RUN apt-get update && apt-get install -y shadowsocks-libev && rm -rf /var/lib/apt/lists/*
ENV METHOD=aes-256-gcm
ENV PASSWORD=Uganda2026!
CMD ss-server -s 0.0.0.0 -p ${PORT} -k ${PASSWORD} -m ${METHOD}
