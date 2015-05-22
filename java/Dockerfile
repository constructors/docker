# Constructors default Java container

FROM constructors/common-app
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    default-jdk \
    default-jre

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/jre/

ONBUILD COPY app /app
ONBUILD RUN chown -R app:app /app /static
ONBUILD WORKDIR /app
ONBUILD USER app
