#!/bin/bash
set -euo pipefail

echo "--- Build image ---"
DOCKERHUBACCOUNT=$(echo DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(echo DOCKERREPOSITORY.txt)
$TEGVERSION=$(echo teg_version.txt)

docker build . --file Dockerfile --tag "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"