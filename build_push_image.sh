#!/bin/sh

#membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .
echo '\n'
echo '\n' 

# Melihat daftar image di lokal.
docker images
echo '\n'
echo '\n'

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 hfauzy/item-app:v1
echo '\n'
echo '\n'
dock
# sebelum menjalankan perintah pada baris 22, silahkan set variable berikut pada terminal
# export GITHUB_PACKAGES_TOKEN=

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login --username hfauzy --password-stdin
echo '\n'
echo '\n'

# Mengunggah image ke Docker Hub/GitHub Packages
docker push hfauzy/item-app:v1
echo '\n'
echo '\n'