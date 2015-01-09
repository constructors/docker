.PHONY: build push clean

all: build

build:
	sudo docker pull debian:jessie
	sudo docker build -t constructors/python-legacy .

push:
	sudo docker push constructors/python-legacy

clean:
	-sudo docker rm `sudo docker ps -a -q  --filter "status=exited"`
	-sudo docker rmi `sudo docker images -q --filter "dangling=true"`
