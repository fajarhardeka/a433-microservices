#!/bin/bash

docker build -t ghcr.io/fajarhardeka/karsajobs-ui:latest .
echo $CR_PAT | docker login ghcr.io -u fajarhardeka --password-stdin
docker push ghcr.io/fajarhardeka/karsajobs-ui:latest