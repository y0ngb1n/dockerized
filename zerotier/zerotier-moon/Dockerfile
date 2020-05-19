FROM spikhalskiy/zerotier-containerized:1.4.6

LABEL maintainer="yangbin <y0ngb1n@163.com>"

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh\
 && ln -sf /usr/sbin/zerotier-cli /zerotier-cli\
 && ln -sf /usr/sbin/zerotier-one /zerotier-one\
 && ln -sf /usr/sbin/zerotier-idtool /zerotier-idtool

EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh"]
