name = 'thenewvu/google-chrome'
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
		--device /dev/snd \
		-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		-v /dev/shm:/dev/shm \
		-v /var/lib/dbus:/var/lib/dbus \
		-v /mnt/docker-data/configs/tmp:/home/$(USER)/Downloads \
		-v /mnt/docker-data/configs/google-chrome:/home/$(USER)/.config/google-chrome \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/fonts:/usr/share/fonts \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-2.0-light:/etc/gtk-2.0/gtkrc \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-3.0-light:/etc/gtk-3.0/settings.ini \
		-v /mnt/docker-data:/data \
		--name google-chrome \
		$(name)
