#!/bin/bash

docker run -ti --rm \
    -v $(pwd)/:/src/ \
    -e "USERID=501" \
    -e "GROUPID=20" \
    malkab/nodejs-dev:v10.16.0
