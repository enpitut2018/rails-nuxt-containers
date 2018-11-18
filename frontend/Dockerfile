# a nuxt env for task-driver
FROM node:8.11.3-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY nuxt/package.json /usr/src/app/
COPY nuxt/yarn.lock /usr/src/app/

RUN apk update && \
	apk add --update --no-cache \
	tzdata && \
	cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
	echo "Asia/Tokyo" > /etc/timezone && \
    npm install -g npm yarn vue-cli && \
    yarn

ENV HOST 0.0.0.0

COPY . /usr/src/app