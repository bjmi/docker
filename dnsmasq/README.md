dnsmasq
=======

Dnsmasq is a Domain Name System forwarder and Dynamic Host Configuration
Protocol server for small computer networks, created as free software.

## docker-compose.yml

```yaml
version: '2'
services:
  dnsmasq:
    image: bjmi/dnsmasq
    network_mode: host
    volumes:
      - ./dnsmasq.d:/etc/dnsmasq.d
    cap_add:
      - NET_ADMIN
    restart: always
```

## References
* http://www.thekelleys.org.uk/dnsmasq/doc.html
* http://www.thekelleys.org.uk/dnsmasq/docs/dnsmasq-man.html
