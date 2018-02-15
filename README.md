# Electra Docker 

- [Electra Docker](#electra-docker)
  * [Intro](#intro)
  * [How to build the images](#how-to-build-the-images)
    + [Electra Libs](#electra-libs)

## Intro

This project contains a few Dockerfile to build Electra containers.

If you are not familiar with docker, you can find additional information in their website: [https://www.docker.com/what-docker](https://www.docker.com/what-docker). 
 
Below a list of images, and their function, contained in this repo.

| Dockerfile                 | docker image                | goal                                                                       |
|----------------------------|-----------------------------|----------------------------------------------------------------------------|
| Dockerfile-electra-builder | electracoin/electra-builder | image containing all the necessary to build a ubuntu Electra wallet        |
| Dockerfile-electra-runner  | electracoin/electra-runner  | image containing all the necessary to run a headless ubuntu Electra wallet |

## How to build the images

The `Makefile` at the root of the project contains a few targets to quickly build `Electra` docker images.

If you want to *just* build the images w/o publishing them to the docker hub, you can simply run `make build-all`.

Please note that, in order to push images to [docker-hub](https://hub.docker.com/u/electracoin/), it is required
to be part of the d `Electracoin` organization and login first.

### Electra Libs

The `Docker-electra-runner` image needs to include a few libraries in order to correctly run the Electra headless image.

It is possible to retrieve the list of libs to be installed on an image with the following command: 

```bash
objdump -p path_to/Electra-qt | grep NEEDED | awk '{ print $2 }' | xargs dpkg -S
```   
