FROM alpine
MAINTAINER binking338 <binking338@163.com>

RUN apk add --update --upgrade py-pip && rm -rf /var/cache/apk/*
RUN pip install shadowsocks

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 8388
ENV METHOD aes-256-cfb
ENV LOCAL_ADDR 0.0.0.0
ENV LOCAL_PORT 1080
ENV TIMEOUT 300

RUN echo "--> server_addr: $SERVER_ADDR"
RUN echo "--> server_port: $SERVER_PORT"
RUN tk=$(date +%s | sha256sum | base64 | head -c 16 ; echo) : ${PASSWORD:=$tk}
RUN echo "--> password: $PASSWORD"
RUN echo "--> method: $METHOD"
RUN echo "--> timeout: $TIMEOUT"

EXPOSE $LOCAL_PORT $SERVER_PORT

ADD shell/sslocal.sh /usr/local/bin
ADD shell/ssserver.sh /usr/local/bin