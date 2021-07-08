FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-devel

RUN apt-get update && apt-get install -y curl
RUN curl -fsSL https://code-server.dev/install.sh | sh


RUN useradd -ms /bin/bash tackman
USER tackman
WORKDIR /home/tackman
RUN code-server \
  --install-extension ms-python.python \
  --install-extension ms-ceintl.vscode-language-pack-ja
