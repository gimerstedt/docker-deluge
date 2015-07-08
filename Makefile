image-name = deluge
container-name = $(image-name)

download-path = /mnt/big-sata/downloads
torrents-path = /mnt/big-sata/torrents

deluge-web-port = 9092

build:
	docker build -t $(image-name) .

run:
	docker run -d --name $(container-name) \
	-p $(deluge-web-port):$(deluge-web-port) \
	-v $(download-path):/downloads \
	-v $(torrents-path):/torrents \
	$(container-name)

clean:
	docker stop $(container-name)
	docker rm $(container-name)

peek:
	docker exec -it $(container-name) /bin/bash

iter: clean build run peek
