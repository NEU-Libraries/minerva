FROM ruby:2.5-alpine
RUN apk update && apk add chromium chromium-chromedriver alpine-sdk sqlite-dev
RUN mkdir /minerva
WORKDIR /minerva
COPY . /minerva
RUN gem install bundler
RUN bundle install