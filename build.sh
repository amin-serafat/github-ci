#!/bin/bash
set -euo pipefail

echo "--- Build image ---"

DOCKERHUBACCOUNT=$(cat /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(cat /version/DOCKERREPOSITORY.txt)
TEGVERSION=$(cat /version/teg_version.txt)

docker build . --file Dockerfile --tag "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"