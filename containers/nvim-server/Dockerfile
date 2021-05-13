
#  _   _                 _             ____
# | \ | | ___  _____   _(_)_ __ ___   / ___|  ___ _ ____   _____ _ __
# |  \| |/ _ \/ _ \ \ / / | '_ ` _ \  \___ \ / _ \ '__\ \ / / _ \ '__|
# | |\  |  __/ (_) \ V /| | | | | | |  ___) |  __/ |   \ V /  __/ |
# |_| \_|\___|\___/ \_/ |_|_| |_| |_| |____/ \___|_|    \_/ \___|_|
#
# https://github.com/yqlbu/neovim-server
#
# Copyright (C) 2020-2021 yqlbu <https://hikariai.net>
#
# This is a open-source software, liscensed under the MIT License.
# See /License for more information.

FROM hikariai/wetty:latest

ENV TZ=America/LosAngeles \
    PORT=3000 \
    UID=998 \
    GID=998 \
    USER=guest \
    ADDUSER=true \
    SECRET=password \
    SHELL=/bin/bash \
    SUDO=false \
    SSL=false \
    CONTAINER=neovim-server

RUN ARCH=$(dpkg --print-architecture) && echo $ARCH > ./ARCH

RUN sudo add-apt-repository ppa:neovim-ppa/unstable -y
RUN sudo add-apt-repository ppa:lazygit-team/release -y
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    wget python3-pip golang neovim ranger lazygit
RUN rm -rf /usr/bin/pip && ln -s /usr/bin/pip3 /usr/bin/pip && \
    rm -rf /usr/bin/python && ln -s /usr/bin/python3 /usr/bin/python
RUN pip install -U pip && pip install -U \
    pynvim neovim-remote pylint
RUN if [ "$(cat ./ARCH)" = "amd64" ] ; then \
      wget https://github.com/wfxr/code-minimap/releases/download/v0.6.0/code-minimap_0.6.0_amd64.deb; \
      dpkg -i code-minimap_0.6.0_amd64.deb; \
    else \
      wget https://github.com/wfxr/code-minimap/releases/download/v0.6.0/code-minimap_0.6.0_arm64.deb; \
      dpkg -i code-minimap_0.6.0_arm64.deb; \
    rm -rf code-minimap_0.6.0*.deb; \
    fi
RUN npm install -g neovim vim-node-rpc
RUN npm install -g instant-markdown-d@next
RUN npm install -g typescript
RUN npm install -g bash-language-server
RUN sudo apt-get clean && \
    rm -rf /var/lib/apt/list/* /tmp/* /var/tmp/* && \
    rm -rf ./ARCH

WORKDIR /usr/src/app

EXPOSE 3000

ADD ./bootstrap.sh /usr/local/sbin
COPY ./nvim /usr/src/app/nvim

ENTRYPOINT [ "bootstrap.sh" ]
CMD [ "wetty" ]
