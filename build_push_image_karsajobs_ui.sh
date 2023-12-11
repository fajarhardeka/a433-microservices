#!/bin/bash

# Menggunakan Github Packages
docker build -t ghcr.io/fajarhardeka/karsajobs-ui:latest . 
# Login Github Packages
echo $CR_PAT | docker login ghcr.io -u fajarhardeka --password-stdin 
# Push Image ke Github Packages
docker push ghcr.io/fajarhardeka/karsajobs-ui:latest 