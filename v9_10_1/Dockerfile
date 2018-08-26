FROM node:9.10.1

LABEL author="Juan Pedro Perez"
LABEL email="jp.perez.alcantara@gmail.com"

RUN apt-get update ; apt-get -y install vim less

# Some niceties
ADD assets/dot.bashrc /root/.bashrc
ADD assets/dot.vimrc /root/.vimrc

# Install packages
RUN ["npm", "install", "-g", "gulp"]
RUN ["npm", "install", "-g", "typescript"]

# Run
ENTRYPOINT ["/bin/bash"]
