#!/bin/bash
set -euo pipefail

echo "--- Build image ---"
DOCKERHUBACCOUNT=$(echo /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(echo /version/DOCKERREPOSITORY.txt)
TEGVERSION=$(echo /version/teg_version.txt)

docker build . --file Dockerfile --tag "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"