FROM node:latest
MAINTAINER Michael Agata <darkdervish@gmail.com>
LABEL anubisworks-ganache.version="0.0.1"
LABEL vendor="AnubisWorks"
LABEL anubisworks-ganache.release-date="2020-02-01"
EXPOSE 7545 8545
RUN yarn add ganache-cli

ENV \
  TCP_PORT=8545 \
  EVM_VERSION=petersburg

RUN mkdir -p /docker/ganache

COPY ./exec/* /docker/ganache

RUN chmod a+rx /docker/ganache/*.sh

ENTRYPOINT ["/docker/ganache/docker-entrypoint.sh"]
