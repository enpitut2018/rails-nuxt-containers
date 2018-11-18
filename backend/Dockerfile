# a rails env for task-driver
FROM ruby:2.3.3-alpine

ENV LANG ja_JP.UTF-8
COPY fonts.conf /root/.config/fontconfig/
COPY ipag.ttc /root/.local/share/fonts/
RUN apk add --no-cache fontconfig && fc-cache -fv

RUN apk upgrade --no-cache && \
    apk add --update --no-cache \
      postgresql-client \
      nodejs \
      sqlite \
      sqlite-dev \
      graphviz \
      tzdata \
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
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "Asia/Tokyo" > /etc/timezone && \
    curl -O "http://dl-4.alpinelinux.org/alpine/edge/community/x86_64/imagemagick6-{6.9.9.47-r0,c%2B%2B-6.9.9.47-r0,dev-6.9.9.47-r0,doc-6.9.9.47-r0,libs-6.9.9.47-r0}.apk" && \
    apk add --no-cache \
      imagemagick6-c%2B%2B-6.9.9.47-r0.apk \
      imagemagick6-dev-6.9.9.47-r0.apk \
      imagemagick6-libs-6.9.9.47-r0.apk \
      imagemagick6-6.9.9.47-r0.apk

WORKDIR /tmp
ADD rails/Gemfile Gemfile
ADD rails/Gemfile.lock Gemfile.lock
RUN gem install bundler && \
    bundle install

RUN apk del build-dependencies

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app