# a rails env for task-driver
FROM ruby:2.3.3-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY rails/Gemfile* /usr/src/app/

RUN apk upgrade --no-cache && \
    apk add --update --no-cache \
      postgresql-client \
      nodejs \
      tzdata \
      sqlite \
      sqlite-dev \
      sqlite-libs && \
    apk add --update --no-cache --virtual=build-dependencies \
      build-base \
      curl-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      postgresql-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev \
      curl && \
    curl -O "http://dl-4.alpinelinux.org/alpine/edge/community/x86_64/imagemagick6-{6.9.9.47-r0,c%2B%2B-6.9.9.47-r0,dev-6.9.9.47-r0,doc-6.9.9.47-r0,libs-6.9.9.47-r0}.apk" && \
    apk add --no-cache \
      imagemagick6-c%2B%2B-6.9.9.47-r0.apk \
      imagemagick6-dev-6.9.9.47-r0.apk \
      imagemagick6-libs-6.9.9.47-r0.apk \
      imagemagick6-6.9.9.47-r0.apk && \
    gem install bundler && \
    bundle install -j4 && \
    apk del build-dependencies

COPY . /usr/src/app