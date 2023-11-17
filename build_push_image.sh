#! /bin/bash

# Membuat docker image
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image sesuai dengan format Github Packages
docker tag item-app:v1 ghcr.io/fajarhardeka/item-app:v1

# Login melalui Github Packages
echo $PAT | docker login ghcr.io --username fajarhardeka --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/fajarhardeka/item-app:v1