# Documentation Platform Docker File

[![](https://images.microbadger.com/badges/image/temandodx/doc-platform.svg)](https://microbadger.com/images/temandodx/doc-platform "Click for more information.")
[![](https://images.microbadger.com/badges/version/temandodx/doc-platform.svg)](https://microbadger.com/images/temandodx/doc-platform "Click for more information.")
[![](https://img.shields.io/docker/pulls/temandodx/doc-platform.svg)](https://hub.docker.com/r/temandodx/doc-platform/ "Click for more information.")
[![](https://travis-ci.org/temando/docker-doc-platform.svg?branch=master)](https://travis-ci.org/temando/docker-doc-platform "Click for more information.")

This project contains the Docker file required to build the documentation platform Docker image. The image is based on a [Alpine Linux](https://alpinelinux.org) installation with the following added:

- [Pandoc](http://pandoc.org) (via [conoria/alpine-pandoc](https://hub.docker.com/r/conoria/alpine-pandoc))
- [MkDocs](http://www.mkdocs.org/)
- [Node](https://nodejs.org/en/)
- [Python](https://www.python.org)
- [Pip](https://pypi.python.org/pypi)
- [AWS CLI](https://aws.amazon.com/cli/)
- NPM packages:
    - [Yarn](https://www.npmjs.com/package/yarn)
    - [`markdownlint-cli`](https://www.npmjs.com/package/markdownlint-cli)
    - [`write-good`](https://www.npmjs.com/package/write-good)
    - [`markdown-spellcheck`](https://www.npmjs.com/package/markdown-spellcheck).

## Prerequisites

Install [Docker](https://www.docker.com) to run `docker` commands.

## Building the Docker Image

To build the documentation platform Docker image, run:

```sh
docker build -t {imagename} --build-arg SOURCE_COMMIT=$(git rev-parse --short HEAD) .
```

**Note:**

- `{imagename}` can be any string.
- Syntax shown above works in `bash`.

## Log in to the Docker Image

To log in to the previously built Docker image, run:

```sh
docker run -ti {imagename} sh
```

`{imagename}` can be any string.
