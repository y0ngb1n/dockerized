FROM spikhalskiy/zerotier-containerized:__VERSION__

ENV VERSION=__VERSION__ \
    BUILD_DATE=__BUILD_DATE__

LABEL org.label-schema.maintainer="yangbin <y0ngb1n@163.com>" \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.name="zerotier-moon" \
      org.label-schema.vendor="y0ngb1n" \
      org.label-schema.version=${VERSION} \
      org.label-schema.vcs-url="https://github.com/y0ngb1n/dockerized/tree/master/zerotier" \
      org.label-schema.schema-version="1.0"
LABEL maintainer="yangbin <y0ngb1n@163.com>"

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh\
 && ln -sf /usr/sbin/zerotier-cli /zerotier-cli\
 && ln -sf /usr/sbin/zerotier-one /zerotier-one\
 && ln -sf /usr/sbin/zerotier-idtool /zerotier-idtool

EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh"]
