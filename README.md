# MixerAPI.com

MixerAPI.com is built using [MkDocs](https://squidfunk.github.io/mkdocs-material/). It is designed to pull in the 
README.md files from all MixerAPI plugins. These are pulled in as git submodules. Additional documentation 
can be added in the `docs/` directory and mapped to the navigation in `mkdocs.yml`.

## Installing

Clone this repo.

```console
git clone git@github.com:mixerapi/mixerapi.com.git mixerapi.com
```

Pull submodules.

```console
git submodule update --init
```

Set the submodule to recurse automatically so you can easily `git pull` updates to the submodules.

```console
git config submodule.recurse true
```

## Running

The site can be run via docker run on your localhost. This includes a live reload as docs and configs change. You can 
browse the site via `http://localhost:8000/` by default.

```console
docker run --rm -it --network=host -v ${PWD}:/docs --user $(id -u):$(id -g) systematical/mixerapidocs:latest
```

## Building

Build will generate `site/`.

```console
docker run --rm -it --network=host -v ${PWD}:/docs --user $(id -u):$(id -g) systematical/mixerapidocs:latest mkdocs build
```

## Adding new plugins

Add the submodule

```console
git submodule add https://github.com/mixerapi/my-new-plugin
```

Then add it to the nav in `mkdocs.yml`