#! /bin/bash

#
docker build -t item-app:v1 .

#
docker images

#
docker tag item-app:v1 ghcr.io/fajarhardeka/item-app:v1

#
echo $PAT | docker login ghcr.io --username fajarhardeka --password-stdin

#
docker push ghcr.io/fajarhardeka/item-app:v1