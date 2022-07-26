#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=johnokwajebi/predictionapi
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login
docker tag mlapi $dockerpath:v1.0.0


# Step 3:
# Push image to a docker repository
docker push $dockerpath:v1.0.0



# docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"