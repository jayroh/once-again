# README

## System dependencies

Ruby version 3.3.0

Other dependencies:

* libglib2.0-0
* libglib2.0-dev
* libjpeg62-turbo-dev
* libpng-dev
* libvips
* imagemagick

(Everything already set up if using docker)

## How to run the test suite

```sh
bundle exec rake
```

## Deployment

### With `docker-compose`

On your host machine, make sure to create the needed credential files.
They can then be mounted via docker(-compose).

```sh
# Generate credentials
EDITOR=vim bin/rails credentials:edit
```

```yml
version: "3.8"

services:
  once_again:
  image: jayroh/once-again:v1.1
  container_name: once_again
  restart: unless-stopped

  # expose port 3000 to internal network
  expose:
    - 3000

  # map internal port 3000 to host port 3000
  # ports:
  #   - "3000:3000"

  # map local dirs to host filesystem
  volumes:
    - "./data/once_again/tmp/images:/rails/tmp/images"

  # generate via `openssl`
  environment:
    SECRET_KEY_BASE: ... # `openssl rand -hex 128`
    RAILS_MASTER_KEY: ...# `openssl rand -hex 32`

```
