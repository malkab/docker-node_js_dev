FROM node:10.15.2

LABEL author="Juan Pedro Perez"
LABEL email="jp.perez.alcantara@gmail.com"

RUN apt-get update ; apt-get -y install vim less

# Some niceties
ADD assets/dot.bashrc /root/.bashrc
ADD assets/dot.vimrc /root/.vimrc

# Install global packages
ENV NPM_REGISTRY "https://registry.npmjs.org"

RUN npm install -g --registry $NPM_REGISTRY \
        mocha \
        webpack \
        sass \
        webpack-cli \
        typedoc \
        npm \
        @angular/cli

# Run
ENTRYPOINT ["/bin/bash"]
