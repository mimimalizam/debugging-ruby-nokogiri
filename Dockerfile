FROM ruby:2.4.1-alpine

COPY ./Gemfile ./Gemfile.lock ./

RUN apk add --update \
      build-base \
      libxml2-dev \
      libxslt-dev \
      && rm -rf /var/cache/apk/*

RUN bundle install --deployment
