FROM node:10-alpine

ADD . ./app
WORKDIR /app

RUN apt-get update || : && apt-get install python -y
RUN apt-get update && apt-get install -y python-pip
RUN apk add --no-cache bash
RUN apk add --no-cache git

RUN chmod +x .scripts/deploy.sh

ENTRYPOINT .scripts/deploy.sh; /bin/bash
