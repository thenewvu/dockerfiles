name = 'thenewvu/sunflower'
includes = ./../includes

dockerfile: $(includes)/*.m4
	m4 -I $(includes) ./Dockerfile.m4 > Dockerfile

build: dockerfile
	docker build --rm \
		--build-arg username=$(USER) \
		--build-arg gitusername='$(shell git config --get user.name)' \
		--build-arg gitusermail='$(shell git config --get user.email)' \
		-t $(name) .

run:
	docker run --rm \
		--net host \
		-e DISPLAY=unix$(DISPLAY) \
		-e SHELL=/bin/bash \
		-e XDG_CONFIG_HOME=/home/$(USER) \
		-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/fonts:/usr/share/fonts:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-2.0:/home/$(USER)/.gtkrc-2.0:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-3.0:/home/$(USER)/.config/gtk-3.0:ro \
		-v /mnt/docker-data/configs/sunflower:/home/$(USER)/.config/sunflower \
		-v /mnt/docker-data:/data \
		--name sunflower \
		$(name)
