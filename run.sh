#!/bin/bash
set -euo pipefail

echo "--- Run image ---"
DOCKERHUBACCOUNT=$(echo DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(echo DOCKERREPOSITORY.txt)
$TEGVERSION=$(echo teg_version.txt)

docker run -p 8080:8080 -d "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"