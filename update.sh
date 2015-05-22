#!/bin/sh
# Updates all container types and publishes the updates

# Container types, dependency order matters
TYPES="common common-app ruby python-legacy python java"

for TYPE in $TYPES; do
    make -C "$TYPE" build push clean
done
