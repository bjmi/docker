# Dockerfile for hostapd
FROM alpine

MAINTAINER Björn Michael <b.michael@gmx.de>

RUN set -xe; \
    apk add --no-cache hostapd iw

VOLUME /etc/hostapd

ENTRYPOINT ["hostapd", "-P", "/run/hostapd.pid", "/etc/hostapd/hostapd.conf"]
