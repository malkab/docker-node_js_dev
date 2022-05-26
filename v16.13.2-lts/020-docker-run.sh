#!/bin/bash

docker run -ti --rm \
  --user 1000:1000 \
  -v $(pwd)/../:$(pwd)/../ \
  --workdir $(pwd)/../node \
  -e NODE_ENV=development \
  -e NODE_MEMORY=2GB \
  -v /home/malkab/.npmrc:/root/.npmrc \
  -v /home/malkab/.npmrc:/home/node/.npmrc \
  malkab/nodejs-dev:16.13.2
