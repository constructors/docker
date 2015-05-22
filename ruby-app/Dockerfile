# Constructors default Ruby app container

FROM constructors/ruby
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

ONBUILD COPY app /app
ONBUILD RUN chown -R app:app /app /static
ONBUILD WORKDIR /app
ONBUILD USER app
ONBUILD RUN bundle install --deployment --clean

# We run everything through Foreman
ENTRYPOINT ["foreman"]
CMD ["start"]

