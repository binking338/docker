FROM alpine:latest
MAINTAINER binking338 <binking338@163.com>

RUN apk add --update --upgrade py-pip && rm -rf /var/cache/apk/* && pip install shadowsocks

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 8388
ENV METHOD aes-256-cfb
ENV LOCAL_ADDR 0.0.0.0
ENV LOCAL_PORT 1080
ENV TIMEOUT 300

RUN echo "--> server_addr: $SERVER_ADDR" && \
	echo "--> server_port: $SERVER_PORT" && \
	tk=$(date +%s | sha256sum | base64 | head -c 16 ; echo) : ${PASSWORD:=$tk} && \
	echo "--> password: $PASSWORD" && \
	echo "--> method: $METHOD" && \
	echo "--> timeout: $TIMEOUT" && \
	echo

EXPOSE $LOCAL_PORT $SERVER_PORT

ADD shell/sslocal.sh /usr/local/bin
ADD shell/ssserver.sh /usr/local/bin

RUN chmod a+x /usr/local/bin/sslocal.sh && \
	chmod a+x /usr/local/bin/ssserver.sh