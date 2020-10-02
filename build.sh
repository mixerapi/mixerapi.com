#!/bin/sh
docker run --rm -it --network=host -v ${PWD}:/docs --user $(id -u):$(id -g) systematical/mixerapidocs:latest mkdocs build