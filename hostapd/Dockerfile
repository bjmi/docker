# Dockerfile for hostapd
FROM alpine:3.12

MAINTAINER Björn Michael <b.michael@gmx.de>

RUN set -xe; \
    apk add --no-cache hostapd iw

VOLUME /etc/hostapd /start.d

ADD start.sh /

CMD ["/start.sh"]
