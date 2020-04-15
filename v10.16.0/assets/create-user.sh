#!/bin/bash

# Creation of user and group
groupadd -g $GROUPID node-map

useradd --shell /bin/bash \
  --uid $USERID \
  --gid $GROUPID \
  --home /home/node node-map

su node-map
