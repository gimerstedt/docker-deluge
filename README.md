# deluge container

simple docker image based on phusion/baseimage that runs deluged and deluge-web.

## config
### makefile
- image-name: name of image to build
- container-name: name of container to run
- download-path: volume on host to download to
- torrents-path: volume on host to watch for new torrents
- deluge-web-port: port on which to connect to web gui

### deluge-web.sh
- port: port on which to connect to web gui (match deluge-web-port in makefile)

## makefile tasks
- clean: stop and remove the container
- build: build a new image
- run: run a new detached container with specified port and volumes mounted
- peek: open bash in container
- iter: all of the above

## out of scope
configure deluge.
