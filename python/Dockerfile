# Constructors default Python container

FROM constructors/common
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

RUN apt-get update \
    && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    && apt-get clean
RUN ln -s /usr/bin/python3 /usr/local/bin/python && \
    ln -s /usr/bin/pip3 /usr/local/bin/pip

