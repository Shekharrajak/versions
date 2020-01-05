FROM node:10-alpine
ADD . ./app
WORKDIR /app

RUN chmod +x .scripts/deploy.sh

ENTRYPOINT .scripts/deploy.sh; /bin/bash
