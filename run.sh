#!/bin/bash
set -euo pipefail

echo "--- Run image ---"
DOCKERHUBACCOUNT=$(echo /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(echo /version/DOCKERREPOSITORY.txt)
TEGVERSION=$(echo /version/teg_version.txt)

docker run -p 8080:8080 -d "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"