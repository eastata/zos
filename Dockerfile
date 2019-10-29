FROM node:8-alpine

RUN mkdir -p /zos
WORKDIR /zos

RUN apk update \
    && apk add --no-cache \
        build-base \
        gcc \
        git \
        bash \
        openssh \
        python

RUN npm install --unsafe-perm --global @openzeppelin/cli

ENTRYPOINT ["/bin/bash"]
