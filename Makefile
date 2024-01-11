# Makefile

build:
	docker build --compress --no-cache -t mariadb/maxscale-devel:latest --file ./src/Dockerfile ./src/ --progress=plain

clean:
	docker container rm $$(docker ps -aq) -f

run:
	-docker rm -f maxscale-dev
	docker run --name maxscale-dev -v ~/git/:/src -it mariadb/maxscale-devel:latest /bin/zsh

runamd:
	docker run --platform linux/amd64 --name maxscale-dev -v ~/git/:/src -it mariadb/maxscale-devel:latest /bin/zsh

buildamd:
	docker build --platform linux/amd64 --compress --no-cache -t mariadb/maxscale-devel:latest --file ./src/Dockerfile ./src/ --progress=plain
