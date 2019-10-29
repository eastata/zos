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
        python \
        tmux

RUN npm install --unsafe-perm --global @openzeppelin/cli
RUN npm install --unsafe-perm --global ganache-cli

ENTRYPOINT ["/bin/bash"]
