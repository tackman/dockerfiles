FROM tensorflow/tensorflow:latest-gpu-py3

RUN useradd -ms /bin/bash tackman

# Ubuntu default repository provides older emacs, causing some problem
RUN  add-apt-repository ppa:kelleyk/emacs && apt update && apt install -y emacs26 neovim git

RUN pip install matplotlib scikit-image scikit-learn scipy numpy torch torchvision hy Pillow requests tqdm scikit-image \
  pytorch-lightning autopep8 && \
  pip install git+https://github.com/ekaschalk/jedhy.git && \
  pip install opencv-python lmdb && \
  pip install stylegan2_pytorch

USER tackman
WORKDIR /home/tackman

## Uncomment if you don't mount .emacs.d/ on a host.
## NOTE: Using .emacs.d in container requires Spacemacs initialization every time when container is created.
# RUN git clone https://github.com/syl20bnr/spacemacs /home/tackman/.emacs.d && \
#    cd .emacs.d && git checkout develop && git pull origin develop

COPY ./.spacemacs /home/tackman/.spacemacs

## You can also launch emacs by docker run
# CMD ["emacs"]
