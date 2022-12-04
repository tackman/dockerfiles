FROM nvidia/cuda:11.6.2-runtime-ubuntu20.04

FROM python:3.10.8-buster
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN pip install poetry

RUN useradd -ms /bin/bash tackman
USER tackman
WORKDIR /home/tackman
RUN code-server \
  --install-extension ms-python.python \
  --install-extension ms-ceintl.vscode-language-pack-ja
