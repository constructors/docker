.PHONY: build push clean

all: build

build:
	sudo docker pull debian:jessie
	sudo docker build -t constructors/ruby .

push:
	sudo docker push constructors/ruby

clean:
	-sudo docker rm `sudo docker ps -a -q  --filter "status=exited"`
	-sudo docker rmi `sudo docker images -q --filter "dangling=true"`
