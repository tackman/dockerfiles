#!/bin/sh
docker run --name deepmacs  --gpus all --rm  -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/takuma/.deepmacs.d/:/home/tackman/.emacs.d -v /home/takuma/cvproj/SinGAN:/home/tackman/SinGAN tackman/deeplearning
