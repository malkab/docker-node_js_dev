FROM node:13.10.1

# This image is for using Jupyter notebooks with JavaScript

LABEL author="Juan Pedro Perez"
LABEL email="jp.perez.alcantara@gmail.com"

RUN   apt-get update ; \
      apt-get -y install vim less python3-pip ; \
      rm /usr/bin/python ; \
      ln -s /usr/bin/python3 /usr/bin/python ; \
      ln -s /usr/bin/pip3 /usr/bin/pip ; \
      pip install jupyter

# Some niceties
ADD assets/dot.bashrc /root/.bashrc
ADD assets/dot.vimrc /root/.vimrc

# Install global packages
ENV NODE_PATH "/usr/local/lib/node_modules/:/usr/local/share/.config/yarn/global/node_modules"

RUN   chmod -R 777 /root

RUN   yarn global add \
        typescript \
        ijavascript ; \
      ijsinstall

# Run
ENTRYPOINT ["/bin/bash"]
