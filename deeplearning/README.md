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

### Using hy-mode and auto completion in Emacs

Once after launcing emacs

```elisp
M-x hy-mode
M-x run-jedhy
```

When you add new import statements in hy buffer

```elisp
M-x hy-jedhy-update-imports
```

Current hy-mode requires manual update for imports. See https://github.com/hylang/hy-mode/blob/master/README.org
