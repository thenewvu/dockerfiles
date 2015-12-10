name = 'thenewvu/base'
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
							 --build-arg timezone=$(shell cat /etc/timezone) \
							 --build-arg locale=$(LANG) \
							 -t $(name) .

run:
	docker run -it --rm $(name)