name = 'thenewvu/atom'
includes = ./../includes

dockerfile: $(includes)/*.m4
	if [ -f $(HOME)/.asoundrc ]; then \
		cp $(HOME)/.asoundrc ./.asoundrc; \
	else \
		touch ./.asoundrc; fi
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
		-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		--device /dev/snd \
		-v /dev/shm:/dev/shm \
		-v /dev/shm:/dev/shm \
		-v /mnt/docker-data/configs/atom:/home/$(USER)/.atom \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/fonts:/usr/share/fonts \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-2.0:/etc/gtk-2.0/gtkrc \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-3.0:/etc/gtk-3.0/settings.ini \
		-v /home/$(USER)/.ssh:/home/$(USER)/.ssh \
		-v /mnt/docker-data:/data \
		--name atom \
		$(name)
