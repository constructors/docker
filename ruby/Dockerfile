# Constructors default Ruby container

FROM constructors/common
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

# Ruby is already shipped by constructors/common
RUN gem install bundler

ONBUILD COPY app /app
ONBUILD RUN chown -R app:app /app /static
ONBUILD WORKDIR /app
ONBUILD USER app
ONBUILD RUN bundle install --deployment --clean
