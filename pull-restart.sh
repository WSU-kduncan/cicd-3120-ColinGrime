#!/bin/bash

# Pull docker image
# Docker pull cgrime/mysite:latest
# Kill old running container (to clear host port)
echo "stopping contianer"
docker stop doggo

# Prunes latest
docker system prune -f -a

# Pull docker image post prune
echo "pulling image"
docker pull cgrime/mysite:latest

# Run new image
echo "run image doggo"
docker run -d --name doggo -p 80:80 cgrime/mysite:latest