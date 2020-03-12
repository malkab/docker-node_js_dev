FROM node:10.16.0

LABEL author="Juan Pedro Perez"
LABEL email="jp.perez.alcantara@gmail.com"

RUN apt-get update ; apt-get -y install vim less
RUN chmod 777 /root

# Some niceties
ADD assets/dot.bashrc /root/.bashrc
ADD assets/dot.vimrc /root/.vimrc

# Install global packages
ENV NPM_REGISTRY "https://registry.npmjs.org"
ENV NODE_PATH "/usr/local/lib/node_modules/:/usr/local/share/.config/yarn/global/node_modules"

RUN yarn global add --registry $NPM_REGISTRY \
        mocha \
        webpack \
        sass \
        webpack-cli \
        @angular/cli \
        typescript \
        webpack-dev-server \
        http-server

# Run
ENTRYPOINT ["/bin/bash"]
