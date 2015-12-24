name = 'thenewvu/rabbitvcs'
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
			   -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
			   -v /mnt/docker-data/configs/fonts:/usr/share/fonts:ro \
			   -v /mnt/docker-data/configs/nemo:/home/$(USER)/.config/nemo \
			   -v /mnt/docker-data/configs/rabbitvcs:/home/$(USER)/.config/rabbitvcs \
			   -v /mnt/docker-data/configs/dconf:/home/$(USER)/.config/dconf \
			   -v /mnt/docker-data/projects:/data/projects \
			   -v /mnt/docker-data/configs:/data/configs \
			   --name rabbitvcs \
			   $(name)
