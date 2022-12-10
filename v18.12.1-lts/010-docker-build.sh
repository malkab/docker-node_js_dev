#!/bin/bash

# --------------------
#
# Builds the image.
#
# --------------------
docker build --force-rm -t malkab/nodejs-dev:18.12.1 .
