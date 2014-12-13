# Constructors default common container

FROM debian:jessie
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

RUN apt-get update \
    && apt-get install -y \
       ruby \
       ruby-dev \
       build-essential \
       libpq-dev \
       rsync \
    && apt-get clean
RUN gem install foreman
RUN adduser --disabled-password --home=/app --gecos "" --uid=2000 app

VOLUME /static

ENTRYPOINT ["foreman"]
CMD ["start"]
