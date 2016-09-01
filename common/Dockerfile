# Constructors default common container

FROM debian:jessie
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

# Basic packages
RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y \
       locales \
       apt-transport-https \
       ruby \
       ruby-dev \
       build-essential \
       rsync \
       libpq-dev \
       postgresql-client \
       libjpeg-dev \
       libpng12-dev \
       libmagickcore-dev \
       libmagickwand-dev \
       libncurses-dev \
       npm \
       git \
       mercurial \
    && apt-get clean

# UTF-8 by default
RUN locale-gen C.UTF-8 \
    && update-locale LANG=C.UTF-8
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN ln -s /usr/bin/nodejs /usr/local/bin/node
RUN gem install foreman \
    && npm install -g bower

# Standard application user
RUN adduser --disabled-password --home=/app --gecos "" --uid=2000 app

# Static files go here
VOLUME /static

# Dynamic files (uploads etc) go here
VOLUME /storage

