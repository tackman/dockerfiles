# Deep learning Docker image with Spacemacs

## Usage

### Launch container example

```sh
xhost +local:root 
# WARN: this comes with security issues
# See https://github.com/Silex/docker-emacs

docker run --name deepmacs  --gpus all --rm  -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/takuma/.deepmacs.d/:/home/tackman/.emacs.d -v /home/takuma/cvproj:/home/tackman/cvproj tackman/deeplearning
```

### Use editor in container
```sh
docker exec deepmacs emacs
```

If you created container by GUI version, command below launches GUI Emacs.
