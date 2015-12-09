name = 'thenewvu/base'
includes = ./../includes

dockerfile: $(includes)/*.m4
	m4 -I $(includes) ./Dockerfile.m4 > Dockerfile

build: dockerfile
	docker build --rm -t $(name) .

run:
	docker run -it --rm $(name)