#!/bin/bash

# -----------------------------------------------------------------
#
# Builds the image.
#
# -----------------------------------------------------------------
#
# Builds a Docker image.
#  
# -----------------------------------------------------------------

# Check mlkcontext to check. If void, no check will be performed
MATCH_MLKCONTEXT=common
# The name of the image to push
IMAGE_NAME=malkab/nodejs-dev
# The tag
IMAGE_TAG=$MLKC_NODE_VER
# Remote registry, if any. For GitLab registry, this is the full
# path to the image up the the image name itself:
# - general registry root: registry.gitlab.com
# - the project group: sunntics-backend
# - the project: sunnsaas-persistence
#
# like: 
#   registry.gitlab.com/sunntics-backend/sunnsaas-persistence/[whatever]/
#   IMAGE_NAME:IMAGE_TAG
REMOTE_REGISTRY=
# Dockerfile
DOCKERFILE=.
# Latest? Tag the image as latest, too
LATEST=true





# ---

# Check mlkcontext

if [ ! -z "${MATCH_MLKCONTEXT}" ] ; then

  if [ ! "$(mlkcontext)" = "$MATCH_MLKCONTEXT" ] ; then

    echo Please initialise context $MATCH_MLKCONTEXT

    exit 1

  fi

fi


if [ ! -z "${REMOTE_REGISTRY}" ] ; then 

  IMAGE_NAME_TAG="${REMOTE_REGISTRY%/}/${IMAGE_NAME}:${IMAGE_TAG}"
  IMAGE_NAME_LATEST="${REMOTE_REGISTRY%/}/${IMAGE_NAME}:latest"
    
else

  IMAGE_NAME_TAG="${IMAGE_NAME}:${IMAGE_TAG}"
  IMAGE_NAME_LATEST="${IMAGE_NAME}:latest"

fi

docker build \
  -t $IMAGE_NAME_TAG \
  $DOCKERFILE

# Tag latest, if asked

if [ "${LATEST}" = true ] ; then

  docker build \
    -t $IMAGE_NAME_LATEST \
    $DOCKERFILE

fi
