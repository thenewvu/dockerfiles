name = 'thenewvu/smartgit'
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
    	-e _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel" \
		-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/fonts:/usr/share/fonts:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/themes:/usr/share/themes:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/icons:/usr/share/icons:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-2.0:/home/$(USER)/.gtkrc-2.0:ro \
		-v /mnt/docker-data/projects/dockerfiles/dotfiles/gtkrc-3.0:/home/$(USER)/.config/gtk-3.0:ro \
		-v /mnt/docker-data/configs/smartgit:/home/$(USER)/.smartgit \
		-v /home/$(USER)/.ssh:/home/$(USER)/.ssh \
		-v /mnt/docker-data/projects:/data/projects \
		-v /mnt/docker-data/configs:/data/configs \
		--name smartgit \
		$(name)
