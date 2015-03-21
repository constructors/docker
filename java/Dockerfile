# Constructors default Java container

FROM constructors/common
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    default-jdk \
    default-jre

ONBUILD COPY app /app
ONBUILD RUN chown -R app:app /app /static
ONBUILD WORKDIR /app
ONBUILD USER app
