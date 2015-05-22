.PHONY: build push clean

all: build

build:
	sudo docker pull debian:jessie
	sudo docker build -t constructors/common-app .

push:
	sudo docker push constructors/common-app

clean:
	-sudo docker rm `sudo docker ps -a -q  --filter "status=exited"`
	-sudo docker rmi `sudo docker images -q --filter "dangling=true"`
