name = 'thenewvu/react-native-devenv'
includes = ./../includes

dockerfile: $(includes)/*.m4
	m4 -I $(includes) ./Dockerfile.m4 > Dockerfile

build: dockerfile
	docker build --rm -t $(name) .

run:
	docker run -it --rm \
						 -v /mnt/docker-data/configs/npm:/home/vu/.npm \
						 -v /mnt/docker-data/projects:/data/projects \
						 -v /mnt/docker-data/tools/android-sdk:/data/tools/android-sdk \
						 --name react-native-devenv \
						 $(name)