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

When repositories change you may need to run the following:

```console
git submodule update --remote
```

## Docker Image

The docker image used by mixerapi is here: https://hub.docker.com/systematical/mixerapidocs and can be seen locally 
in [Dockerfile](Dockerfile).

### Running

The site can be run via `./run.sh` (see full command below) on your localhost. This includes a live reload as docs and 
configs change. You can browse the site via `http://localhost:8000/` by default.

```console
docker run --rm -it --network=host -v ${PWD}:/docs --user $(id -u):$(id -g) systematical/mixerapidocs:latest
```

### Building

To build the site run `./build.sh` which runs the command below.

```console
docker run --rm -it --network=host -v ${PWD}:/docs --user $(id -u):$(id -g) systematical/mixerapidocs:latest mkdocs build
```

## Adding new MixerAPI plugins

Add the submodule

```console
git submodule add https://github.com/mixerapi/my-new-plugin
```

Then add it to the nav in `mkdocs.yml`

## Production Web Server Settings

Setup on production is pretty standard. 404 errors need to be pointed at `404.php` which has some custom redirect 
logic in it. FPM needs to be informed to use this as well with `ProxyErrorOverride`. Aside from handling 404 errors, 
the site is static and does not need PHP.

```
# apache virtualhost
<VirtualHost *:443>
    ServerName mixerapi.com
    DocumentRoot /var/www/mixerapi.com/site
    <Directory /var/www/mixerapi.com/site>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Order allow,deny
        allow from all
    </Directory>
    <FilesMatch \.php$>
        SetHandler "proxy:unix:/var/run/php/php7.4-fpm.sock|fcgi://localhost/"
        ProxyErrorOverride on
    </FilesMatch>
    ErrorDocument 404 /404.php
    SSLEngine On
    # SSL settings here
</VirtualHost>
```
