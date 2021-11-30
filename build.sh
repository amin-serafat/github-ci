#!/bin/bash
set -euo pipefail

echo "--- Build image ---"

DOCKERHUBACCOUNT=$(cat /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(cat /version/DOCKERREPOSITORY.txt)
TAGVERSION=$(cat /version/tag_version.txt)

docker build . --file Dockerfile --tag "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TAGVERSION"