FROM alpine
MAINTAINER Paul TREHIOU <paul.trehiou@gmail.com>

RUN apk add -U murmur=1.2.10-r1

# Forward apporpriate ports
EXPOSE 64738/tcp 64738/udp

# Run murmur
ENTRYPOINT ["/usr/bin/murmurd", "-fg", "-v"]
