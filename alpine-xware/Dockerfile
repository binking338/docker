FROM alpine
MAINTAINER binking338 <binking338@163.com>

WORKDIR /xware
ADD Xware1.0.31_x86_32_glibc.tar.gz /xware
ADD shell/monitor.sh /xware

RUN chmod a+x /xware/monitor.sh

VOLUME /data

ENTRYPOINT ["./monitor.sh"]