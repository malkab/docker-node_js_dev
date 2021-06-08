FROM node:14.17.0-buster

LABEL author="Juan Pedro Perez"
LABEL email="jp.perez.alcantara@gmail.com"

# The base image already includes a node user with 1000:1000
# uid:gid for mapping, but add home files
ADD assets/dot.bashrc /root/.bashrc
ADD assets/dot.vimrc /root/.vimrc
ADD assets/dot.bashrc /etc/skel/.bashrc
ADD assets/dot.vimrc /etc/skel/.vimrc

# Copy and run setup
ADD assets/configure.sh /
ADD assets/keyboard_selections.conf /
RUN chmod 777 /configure.sh ; \
  /configure.sh ; \
  rm /configure.sh

# Node registry
ENV NPM_REGISTRY "https://registry.npmjs.org"
ENV NODE_PATH "/usr/local/lib/node_modules/:/usr/local/share/.config/yarn/global/node_modules"

# Run
ENTRYPOINT ["/bin/bash"]
