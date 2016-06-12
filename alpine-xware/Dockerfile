FROM alpine
MAINTAINER binking338 <binking338@163.com>

WORKDIR /xware
ADD shell/* /xware

RUN chmod a+x /xware/monitor.sh

VOLUME /data

ENTRYPOINT ["./monitor.sh"]