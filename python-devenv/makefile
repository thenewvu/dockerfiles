name = 'thenewvu/python-devenv'
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
						 -v /tmp/.X11-unix:/tmp/.X11-unix \
						 -v /mnt/docker-data/projects/dockerfiles/dotfiles/fonts:/usr/share/fonts \
				 		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-2.0:/etc/gtk-2.0/gtkrc \
				 		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-3.0:/etc/gtk-3.0/settings.ini \
						 -v /mnt/docker-data/configs/pycharm:/home/$(USER)/.PyCharm50 \
						 -v /mnt/docker-data/projects:/data/projects \
						 --name python-devenv \
						 $(name)
