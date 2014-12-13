# Constructors default Python container

FROM constructors/common
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

RUN apt-get update \
    && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev

ONBUILD COPY app /app
ONBUILD RUN chown -R app:app /app /static
ONBUILD WORKDIR /app
ONBUILD RUN pip install -r requirements.txt
ONBUILD USER app
