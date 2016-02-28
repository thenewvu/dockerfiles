name = 'thenewvu/robomongo'
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
		-v /mnt/docker-data/configs/robomongo:/home/$(USER)/.config/robomongo \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/fonts:/usr/share/fonts:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-2.0:/home/$(USER)/.gtkrc-2.0:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-3.0:/home/$(USER)/.config/gtk-3.0:ro \
		--name robomongo \
		$(name)
