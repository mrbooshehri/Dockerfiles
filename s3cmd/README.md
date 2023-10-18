# How to run
As far as VPN modules might need some kernel features which they're not
accessible by default you need to pass ```--privileged``` option in your
docker run command, as an example:

```bash
docker run --it --rm -h fortinet --privileged -v .:/etc/openfortivpn vpnbox:v1
```
