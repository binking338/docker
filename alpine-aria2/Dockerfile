FROM alpine
MAINTAINER binking338 <binking338@163.com>

RUN apk --update --upgrade \ 
    add aria2 && \
    rm -rf /var/cache/apk/*

RUN echo "--> generating token" && \
tk=$(date +%s | sha256sum | base64 | head -c 16 ; echo) \
: ${TOKEN:=$tk} && \
echo "--> token: $TOKEN" && \
echo

VOLUME /downloads
VOLUME /etc/aria2

EXPOSE 6800 6881-6889

ENTRYPOINT ["aria2c", "--dir=/downloads", "--rpc-secret=$TOKEN", "--enable-rpc=true", "--rpc-listen-all=true", "--rpc-allow-origin-all=true"]
