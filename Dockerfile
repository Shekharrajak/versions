FROM alpine

RUN apk add --update npm
RUN apk add --no-cache python python-dev python3 python3-dev \
    linux-headers build-base bash git ca-certificates && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    rm -r /root/.cache


ADD . ./app
WORKDIR /app

RUN chmod +x .scripts/deploy.sh

ENTRYPOINT .scripts/deploy.sh; /bin/bash
