# https://github.com/daeuniverse/dae/blob/main/Dockerfile
# https://github.com/tailscale/tailscale/blob/main/Dockerfile

FROM golang:1.22-bookworm AS build-env

WORKDIR /build/

RUN apt-get update \
 && apt-get install -y llvm-15 clang-15 git make

ENV CLANG=clang-15
ARG DAE_VERSION="v0.7.0"
ENV DAE_VERSION=$DAE_VERSION

RUN git clone -b "$DAE_VERSION" --single-branch --depth 1 --recurse-submodules https://github.com/daeuniverse/dae.git . \
 && go mod download \
 && make OUTPUT=dae GOFLAGS="-buildvcs=false" CC=clang CGO_ENABLED=0

FROM alpine:3.20

RUN mkdir -p /usr/local/share/dae/ /etc/dae/ \
 && wget -O /usr/local/share/dae/geoip.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat \
 && wget -O /usr/local/share/dae/geosite.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat \
 #&& apk add --no-cache ca-certificates iptables iproute2 ip6tables \
 && command -v nft >/dev/null || apk add --no-cache nftables

COPY --from=build-env /build/dae /usr/local/bin
COPY --from=build-env /build/install/empty.dae /etc/dae/config.dae
RUN chmod 0600 /etc/dae/config.dae

ENTRYPOINT ["dae", "run", "-c", "/etc/dae/config.dae"]