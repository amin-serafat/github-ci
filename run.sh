#!/bin/bash
set -euo pipefail

echo "--- Run image ---"

DOCKERHUBACCOUNT=$(cat /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(cat /version/DOCKERREPOSITORY.txt)
TEGVERSION=$(cat /version/teg_version.txt)

docker run -p 8080:8080 -d "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"