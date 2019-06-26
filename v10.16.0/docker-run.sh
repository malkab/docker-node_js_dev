#!/bin/bash

docker run -ti --rm \
    -v $(pwd)/:/src/ \
    malkab/nodejs-dev:v10.16.0
