# Constructors default Python legacy container

FROM constructors/common
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

RUN apt-get update \
    && apt-get install -y \
    python2.7 \
    python-pip \
    python2.7-dev \
    && apt-get clean
RUN ln -s /usr/bin/python2 /usr/local/bin/python && \
    ln -s /usr/bin/pip2 /usr/local/bin/pip

