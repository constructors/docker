# Constructors default Ruby container

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
RUN gem install bundler foreman
RUN adduser --disabled-password --home=/app --gecos "" --uid=2000 app

VOLUME /static

ONBUILD COPY app /app
ONBUILD RUN chown -R app:app /app /static
ONBUILD WORKDIR /app
ONBUILD USER app
ONBUILD RUN bundle install --deployment --clean

ENTRYPOINT ["foreman"]
CMD ["start"]
