name = 'thenewvu/javascript-devenv'
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
		-m 1G --memory-swap -1 \
		-e DISPLAY=unix$(DISPLAY) \
		-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/fonts:/usr/share/fonts \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-2.0:/etc/gtk-2.0/gtkrc \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-3.0:/etc/gtk-3.0/settings.ini \
		-v /mnt/docker-data/configs/webstorm:/home/$(USER)/.WebStorm12 \
		-v /home/${USER}/.ssh:/home/$(USER)/.ssh \
		-v /mnt/docker-data/configs/npm:/home/$(USER)/.npm \
		-v /mnt/docker-data/projects:/data/projects \
		$(name)
