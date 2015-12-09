name = 'thenewvu/google-chrome'
includes = ./../includes

dockerfile: $(includes)/*.m4
	m4 -I $(includes) ./Dockerfile.m4 > Dockerfile

build: dockerfile
	docker build --rm -t $(name) .

run:
	docker run -it --rm \
			           --net host \
			           -e DISPLAY=unix$(DISPLAY) \
	               -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
			           --device /dev/snd \
			           -v /dev/shm:/dev/shm \
	               -v /mnt/docker-data/configs/tmp:/home/vu/Downloads \
	               -v /mnt/docker-data/configs/google-chrome:/home/vu/.config/google-chrome \
	               -v /etc/machine-id:/etc/machine-id \
	               -v /var/lib/dbus:/var/lib/dbus \
			           --name google-chrome \
			           $(name)