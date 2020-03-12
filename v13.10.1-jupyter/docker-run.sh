#!/bin/bash

docker run -ti --rm \
    -v $(pwd)/:/src/ \
    --workdir /src/ \
    -p 8888:8888 \
    malkab/nodejs-dev:v13.10.1-jupyter
    
