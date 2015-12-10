name = 'thenewvu/react-native-web-devenv'
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
						 -v /mnt/docker-data/configs/fonts:/usr/share/fonts:ro \
						 -v /mnt/docker-data/configs/npm:/home/$(USER)/.npm \
						 -v /mnt/docker-data/configs/webstorm:/home/$(USER)/.WebStorm11 \
						 -v /mnt/docker-data/configs/android-sdk:/home/$(USER)/.android \
						 -v /mnt/docker-data/configs/gradle:/home/$(USER)/.gradle \
						 -v /mnt/docker-data/tools/android-sdk:/data/tools/android-sdk \
						 -v /mnt/docker-data/projects:/data/projects \
						 --privileged -v /dev/bus/usb:/dev/bus/usb \
						 -v /mnt/docker-data/projects:/data/projects \
						 --name webstorm \
						 $(name)