#!/bin/bash
set -euo pipefail

echo "--- Build image ---"
IMAGE_NAME=$(cat /version/version.txt)
docker build . --file Dockerfile --tag $IMAGE_NAME