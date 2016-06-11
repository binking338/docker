FROM alpine:latest
MAINTAINER binking338 <binking338@163.com>

RUN apk --update --upgrade add aria2 && rm -rf /var/cache/apk/*

VOLUME /downloads
VOLUME /etc/aria2

ENV RPC_LISTEN_PORT 6800
ENV BT_LISTEN_PORT 6881
ENV DHT_LISTEN_PORT 6891
ENV TOKEN aria2

EXPOSE $RPC_LISTEN_PORT $BT_LISTEN_PORT $DHT_LISTEN_PORT

ADD shell/run.sh /run.sh
RUN chmod a+x /run.sh

ENTRYPOINT ["/run.sh"]
