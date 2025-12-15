FROM python:3-alpine
LABEL maintainer="y0ngb1n <y0ngb1n.me@gmail.com>"

RUN pip3 install you-get==0.4.1205

WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "you-get" ]
CMD [ "--help" ]
