#!/bin/bash

# Menggunakan Github Packages
echo "Proses membuat image...."
docker build -t ghcr.io/fajarhardeka/order-service:latest . 
#Login Github Packages
echo $CR_PAT | docker login ghcr.io -u fajarhardeka --password-stdin 
# Push Image ke Github Packages
docker push ghcr.io/fajarhardeka/order-service:latest 
# Done
echo "Proses selesai" 