FROM ruby:2.4.1-alpine

COPY ./Gemfile ./Gemfile.lock ./

RUN bundle install --deployment
