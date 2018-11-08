# a nuxt env for task-driver
FROM node:8.11.3-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY nuxt/package.json /usr/src/app/
COPY nuxt/yarn.lock /usr/src/app/

RUN apk update && \
    npm install -g npm && \
    npm install -g vue-cli && \
    yarn

ENV HOST 0.0.0.0

COPY . /usr/src/app