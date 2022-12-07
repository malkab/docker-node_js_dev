#!/bin/bash

# -----------------------------------------------------------------
#
# Runs the node FROM base image to test build steps interactively.
#
# -----------------------------------------------------------------
docker run -ti --rm \
  --user 0:0 \
  -v $(pwd):$(pwd) \
  --workdir $(pwd) \
  --entrypoint /bin/bash \
  node:18.12.1-bullseye
