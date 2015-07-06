# Constructors default Ruby app container

FROM constructors/ruby
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

# Handler script to build Rails assets
ADD rails_asset_pipeline /usr/local/bin/

ONBUILD COPY app /app
ONBUILD RUN chown -R app:app /app /static \
        && chown app:app /storage
ONBUILD WORKDIR /app
ONBUILD USER app
ONBUILD RUN bundle install --deployment --clean

# Rails assets manifest persistence hack
ONBUILD RUN test -e config/initializers/assets.rb \
            && echo "\n\nRails.application.config.assets.manifest = '/storage/.sprockets-manifest.json'" >> config/initializers/assets.rb \
            || true

# We run everything through Foreman
ENTRYPOINT ["foreman"]
CMD ["start"]

