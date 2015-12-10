name = 'thenewvu/skype'
includes = ./../includes

dockerfile: $(includes)/*.m4
	m4 -I $(includes) ./Dockerfile.m4 > Dockerfile

build: dockerfile
	docker build --rm \
							 --build-arg username=$(USER) \
							 -t $(name) .

run:
	docker run --rm \
	           --net host \
	           -e DISPLAY=unix$(DISPLAY) \
	           -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	           -v /mnt/docker-data/configs/fonts:/usr/share/fonts:ro \
	           -v /mnt/docker-data/configs/skype:/home/$(USER)/.Skype \
	           -v /mnt/docker-data:/data \
	           $(name)