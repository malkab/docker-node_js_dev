#!/bin/bash

# --------------------
#
# Runs the image for testing.
#
# --------------------
docker run -ti --rm \
  --user 1000:1000 \
  --name node_test \
  --hostname node_test \
  -v $(pwd):$(pwd) \
  --workdir $(pwd) \
  -e NODE_ENV=development \
  -e NODE_MEMORY=2GB \
  -v /home/malkab/.npmrc:/root/.npmrc \
  -v /home/malkab/.npmrc:/home/node/.npmrc \
  malkab/nodejs-dev:18.12.1
