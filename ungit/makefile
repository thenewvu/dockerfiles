name = 'thenewvu/ungit'
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
				-v /mnt/docker-data/configs/npm:/home/$(USER)/.npm \
				-v /mnt/docker-data/configs/fonts:/usr/share/fonts:ro \
				-v /mnt/docker-data/projects:/data/projects \
				-v /mnt/docker-data/configs:/data/configs \
				--name ungit \
				$(name)
