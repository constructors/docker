# Constructors default Python legacy app container

FROM constructors/python-legacy
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

ONBUILD COPY app /app
ONBUILD RUN chown -R app:app /app /static \
            && chown app:app /storage
ONBUILD WORKDIR /app
ONBUILD RUN pip install -r requirements.txt
ONBUILD USER app

# We run everything through Foreman
ENTRYPOINT ["foreman"]
CMD ["start"]

