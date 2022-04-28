FROM ruby:3.0.1
FROM ubuntu:trusty
ENV BUNDLER_VERSION=2.2.15
RUN apt update
RUN apt install -y software-properties-common ca-certificates wget curl ssh
RUN apt install -y build-essential
RUN sudo apt-get update
RUN sudo apt-get install build-essential \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      postgresql-dev \
      python \
      tzdata \
      yarn
       
RUN gem install bundler -v 2.2.15

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle config build.nokogiri --use-system-libraries

RUN bundle check || bundle install

COPY package.json yarn.lock ./

RUN yarn install --check-files

COPY . ./

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]