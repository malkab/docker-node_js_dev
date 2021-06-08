#!/bin/bash

# -----------------------------------------------------------------
#
# Runs a test container.
#
# -----------------------------------------------------------------
#
# Runs a arbitrary container.
#  
# -----------------------------------------------------------------

# Check mlkcontext to check. If void, no check will be performed
MATCH_MLKCONTEXT=common
# Custom command to execute, leave blank for using the 
# image's built-in option
COMMAND_EXEC=
# The network to connect to. Remember that when attaching to the network
# of an existing container (using container:name) the HOST is
# "localhost"
NETWORK=
# Container name
CONTAINER_NAME=
# Container host name
CONTAINER_HOST_NAME=
# The name of the image to pull, without tag
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
# A set of volumes in the form ("source:destination" "source:destination")
VOLUMES=(
  $(pwd):/ext_src
)
# Volatile (-ti --rm)
VOLATILE=true
# Open ports in the form (external:internal external:internal)
PORTS=()
# Custom entrypoint, leave blank for using the 
# image's built-in option
ENTRYPOINT=/bin/bash
# Custom workdir
WORKDIR=/ext_src
# Use display for X11 host server?
X11=false





# ---

# Check mlkcontext

if [ ! -z "${MATCH_MLKCONTEXT}" ] ; then

  if [ ! "$(mlkcontext)" = "$MATCH_MLKCONTEXT" ] ; then

    echo Please initialise context $MATCH_MLKCONTEXT

    exit 1

  fi

fi


if [ ! -z "${COMMAND_EXEC}" ] ; then 

  COMMAND_EXEC="-c \"${COMMAND_EXEC}\""
  
fi


if [ ! -z "${NETWORK}" ] ; then 

  NETWORK="--network=${NETWORK}"
  
fi


if [ "${X11}" = true ] ; then 

  X11="-e DISPLAY=host.docker.internal:0"

  # Prepare XQuartz server
  xhost + 127.0.0.1

else

  X11=

fi


if [ ! -z "${CONTAINER_NAME}" ] ; then 

  CONTAINER_NAME="--name=${CONTAINER_NAME}"
  
fi


if [ ! -z "${CONTAINER_HOST_NAME}" ] ; then

  CONTAINER_HOST_NAME="--hostname=${CONTAINER_HOST_NAME}"
  
fi


if [ ! -z "${REMOTE_REGISTRY}" ] ; then 

  IMAGE_NAME="${REMOTE_REGISTRY%/}/${IMAGE_NAME}:${IMAGE_TAG}"
    
else

  IMAGE_NAME="${IMAGE_NAME}:${IMAGE_TAG}"

fi


if [ ! -z "${ENTRYPOINT}" ] ; then 

  ENTRYPOINT="--entrypoint ${ENTRYPOINT}"
    
fi


if [ ! -z "${WORKDIR}" ] ; then 

  WORKDIR="--workdir ${WORKDIR}"

fi


VOLUMES_F=

if [ ! -z "${VOLUMES}" ] ; then

  for E in "${VOLUMES[@]}" ; do

    VOLUMES_F="${VOLUMES_F} -v ${E} "

  done

fi


PORTS_F=

if [ ! -z "${PORTS}" ] ; then

  for E in "${PORTS[@]}" ; do

    PORTS_F="${PORTS_F} -p ${E} "

  done

fi


if [ "$VOLATILE" = true ] ; then

  COMMAND="docker run -ti --rm"

else

  COMMAND="docker run -ti"

fi


eval  $COMMAND \
        $NETWORK \
        $CONTAINER_NAME \
        $CONTAINER_HOST_NAME \
        $X11 \
        $VOLUMES_F \
        $PORTS_F \
        $ENTRYPOINT \
        $WORKDIR \
        $IMAGE_NAME \
        $COMMAND_EXEC
