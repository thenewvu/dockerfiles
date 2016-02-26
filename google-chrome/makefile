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
						 -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
						 --device /dev/snd \
						 -v /dev/shm:/dev/shm \
						 -v /mnt/docker-data/configs/tmp:/home/$(USER)/Downloads \
						 -v /mnt/docker-data/configs/google-chrome:/home/$(USER)/.config/google-chrome \
						 -v /mnt/docker-data/projects/dockerfiles/dotfiles/fonts:/usr/share/fonts:ro \
						 -v /mnt/docker-data/projects/dockerfiles/dotfiles/themes:/usr/share/themes:ro \
						 -v /mnt/docker-data/projects/dockerfiles/dotfiles/icons:/usr/share/icons:ro \
						 -v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-2.0:/home/$(USER)/.gtkrc-2.0:ro \
						 -v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-3.0:/home/$(USER)/.config/gtk-3.0:ro \
						 -v /mnt/docker-data/configs:/data/config \
						 -v /mnt/docker-data/projects:/data/projects \
						 -v /var/lib/dbus:/var/lib/dbus \
						 --name google-chrome \
						 $(name)
