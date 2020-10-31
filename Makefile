.DEFAULT_GOAL := build

init:
	git submodule update --init
	git config submodule.recurse true
	git submodule update --remote

update:
	git submodule update --remote

run:
	make update
	docker run --rm -it --network=host -v ${PWD}:/docs --user $(id -u):$(id -g) systematical/mixerapidocs:latest

build:
	make update
	docker run --rm -it --network=host -v ${PWD}:/docs --user $(id -u):$(id -g) systematical/mixerapidocs:latest mkdocs build

deploy:
    git pull
	make update
	docker run --rm --network=host -v ${PWD}:/docs --user $(id -u):$(id -g) systematical/mixerapidocs:latest mkdocs build