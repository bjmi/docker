# Dockerfile for dnsmasq with DNSSEC support
FROM alpine

MAINTAINER Björn Michael <b.michael@gmx.de>

RUN set -xe; \
    apk add --no-cache dnsmasq-dnssec; \
    echo "conf-dir=/etc/dnsmasq.d,*.conf" >> /etc/dnsmasq.conf

VOLUME /etc/dnsmasq.d

EXPOSE 53/tcp \
       53/udp \
       67/udp

ENTRYPOINT ["dnsmasq", "--no-daemon", "--user=dnsmasq", "--group=dnsmasq"]
