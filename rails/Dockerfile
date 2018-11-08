# a rails env for task-driver
FROM ruby:2.3.3-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile* /usr/src/app/

RUN apk upgrade --no-cache && \
    apk add --update --no-cache \
      postgresql-client \
      nodejs \
      tzdata && \
    apk add --update --no-cache --virtual=build-dependencies \
      build-base \
      curl-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      postgresql-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev && \
    gem install bundler && \
    bundle install -j4 && \
    apk del build-dependencies

COPY . /usr/src/app