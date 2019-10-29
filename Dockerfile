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
        tmux \
        jq

RUN npm install --unsafe-perm --global @openzeppelin/cli
RUN npm install --unsafe-perm --global ganache-cli
RUN npm install --unsafe-perm --global web3

ENTRYPOINT ["/bin/bash"]
