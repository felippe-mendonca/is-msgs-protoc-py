#!/bin/bash
set -e

docker_user="mendonca"
image_tag="${docker_user}/is-msgs-protoc:1.1.7"
docker build . -f Dockerfile -t ${image_tag} --no-cache --network=host

read -r -p "Do you want to push image ${image_tag}? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]; then
    echo "Log-in as '${docker_user}' at Docker registry:"
    docker login -u ${docker_user}
    docker push ${image_tag}
fi