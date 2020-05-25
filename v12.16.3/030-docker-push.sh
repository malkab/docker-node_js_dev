#!/bin/bash

# -----------------------------------------------------------------
#
# Document here the purpose of the script.
#
# -----------------------------------------------------------------
#
# Pushes a Docker image to a repository.
#  
# -----------------------------------------------------------------

# The name of the image to push
IMAGE_NAME=malkab/nodejs-dev
# The tag
IMAGE_TAG=$MLKC_NODE_VER
# Remote registry, if any
REMOTE_REGISTRY=





# ---

if [ ! -z "${REMOTE_REGISTRY}" ]; then 

    IMAGE_NAME_FINAL="${REMOTE_REGISTRY%/}/${IMAGE_NAME}:${IMAGE_TAG}"
    
else

    IMAGE_NAME_FINAL="${IMAGE_NAME}:${IMAGE_TAG}"

fi



docker login
docker push $IMAGE_NAME_FINAL
docker push $IMAGE_NAME:latest
