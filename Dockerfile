FROM ubuntu:20.04
COPY . .

RUN apt update &&\
	apt install -y curl git &&\
	curl -sL https://deb.nodesource.com/setup_19.x -o nodesource_setup.sh &&\
	bash nodesource_setup.sh \
	&& apt-get update \
	&& apt-get install -y nodejs 
ENTRYPOINT ["bash", "commands.sh"]