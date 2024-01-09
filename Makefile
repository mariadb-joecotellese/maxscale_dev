# Makefile

build:
	docker build --compress --no-cache -t mariadb/maxscale-devel:latest --file ./src/Dockerfile ./src/ --progress=plain

clean:
	docker container rm $$(docker ps -aq) -f
	