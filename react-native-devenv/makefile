name = 'thenewvu/react-native-devenv'
includes = ./../includes

dockerfile: $(includes)/*.m4
	m4 -I $(includes) ./Dockerfile.m4 > Dockerfile

build: dockerfile
	docker build --rm \
							 --build-arg username=$(USER) \
							 -t $(name) .

run:
	docker run -it \
             --rm \
             --net host \
						 -v /mnt/docker-data/configs/npm:/home/$(USER)/.npm \
						 -v /mnt/docker-data/projects:/data/projects \
						 -v /mnt/docker-data/tools/android-sdk:/data/tools/android-sdk \
						 -v /mnt/docker-data/configs/android-sdk:/home/$(USER)/.android \
						 -v /mnt/docker-data/configs/gradle:/home/$(USER)/.gradle \
						 --privileged -v /dev/bus/usb:/dev/bus/usb \
						 --name react-native-devenv \
						 $(name)
