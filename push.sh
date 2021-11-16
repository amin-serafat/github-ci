#!/bin/bash
set -euo pipefail

echo "--- Push image ---"
IMAGE_NAME=$(cat /version/version.txt)
DOCKERHUB_USERNAME=$(cat /version/DOCKERHUB_USERNAME.txt)
DOCKERHUB_TOKEN=$(cat /version/DOCKERHUB_USERNAME.txt)

docker login -u "${{ secrets.DOCKERHUB_USERNAME }}" -p "${{ secrets.DOCKERHUB_TOKEN }}"
docker push $IMAGE_NAME