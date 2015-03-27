# Constructors default common container

FROM debian:jessie
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

RUN apt-get update \
    && apt-get install -y \
       apt-transport-https \
       ruby \
       ruby-dev \
       build-essential \
       rsync \
       libpq-dev \
       libjpeg-dev \
       libpng12-dev \
    && apt-get clean
RUN gem install foreman
RUN adduser --disabled-password --home=/app --gecos "" --uid=2000 app

VOLUME /static
VOLUME /storage

ENTRYPOINT ["foreman"]
CMD ["start"]
