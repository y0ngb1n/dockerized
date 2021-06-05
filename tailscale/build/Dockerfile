FROM alpine:3.11 AS build-env
RUN apk add --no-cache ca-certificates curl tar

# https://pkgs.tailscale.com/stable/
ENV VERSION=__VERSION__
RUN curl -Lo tailscale.tgz https://pkgs.tailscale.com/stable/tailscale_${VERSION}_amd64.tgz
RUN tar xf tailscale.tgz

FROM alpine:3.11

ENV VERSION=__VERSION__ \
    BUILD_DATE=__BUILD_DATE__

LABEL org.label-schema.maintainer="yangbin <y0ngb1n@163.com>" \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.name="tailscale" \
      org.label-schema.vendor="y0ngb1n" \
      org.label-schema.version=${VERSION} \
      org.label-schema.vcs-url="https://github.com/y0ngb1n/dockerized/tree/master/tailscale" \
      org.label-schema.schema-version="1.0"
LABEL maintainer="yangbin <y0ngb1n@163.com>"

RUN apk add --no-cache ca-certificates iptables iproute2
COPY --from=build-env /tailscale_${VERSION}_amd64/tailscale* /usr/local/bin/
CMD [ "tailscaled" ]