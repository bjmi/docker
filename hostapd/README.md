hostapd
=======

hostapd is a user space daemon for access point and authentication servers. It implements
IEEE 802.11 access point management, IEEE 802.1X/WPA/WPA2/EAP Authenticators and RADIUS
authentication server. The current supports Linux (Host AP, mac80211-based drivers)
and FreeBSD (net80211)

## docker-compose.yml

```yaml
version: '2'
services:
  hostapd:
    image: bjmi/hostapd
    network_mode: host
    volumes:
      - ./hostapd:/etc/hostapd
      - ./scripts:/start.d
    cap_add:
      - NET_ADMIN
    restart: always
```

## References
* https://w1.fi/cgit/hostap/plain/hostapd/hostapd.conf
