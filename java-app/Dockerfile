# Constructors default Java app container

FROM constructors/java
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

ONBUILD COPY app /app
ONBUILD RUN chown -R app:app /app /static \
            && chown app:app /storage
ONBUILD WORKDIR /app
ONBUILD USER app

# We run everything through Foreman
ENTRYPOINT ["foreman"]
CMD ["start"]

