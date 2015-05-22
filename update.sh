#!/bin/sh
# Updates all container types and publishes the updates

# Container types, dependency order matters
TYPES="common ruby ruby-app python-legacy python-legacy-app python python-app python-dev java java-app"

for TYPE in $TYPES; do
    make -C "$TYPE" build push clean
done
