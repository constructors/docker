#!/bin/sh
# Updates all container types and publishes the updates

# Container types, dependency order matters
TYPES="common ruby python-legacy python"

for TYPE in $TYPES; do
    make -C "$TYPE" build push clean
done
