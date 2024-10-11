# https://github.com/yegle/fava-docker
# https://github.com/swissmanu/docker-fava

FROM bitnami/python:3.12-debian-12

ARG FAVA_PIP_VERSION="1.29"
ENV FAVA_PIP_VERSION=$FAVA_PIP_VERSION \
    FAVA_HOST="0.0.0.0" \
    BEANCOUNT_FILE="/ledger/main.beancount"

EXPOSE 5000
ENTRYPOINT [ "fava" ]

COPY requirements.txt .
RUN pip3 install fava==$FAVA_PIP_VERSION \
 && pip3 install -r requirements.txt
