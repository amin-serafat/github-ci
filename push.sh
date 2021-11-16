#!/bin/bash
set -euo pipefail

echo "--- Push image ---"

DOCKERHUBACCOUNT=$(cat /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(cat /version/DOCKERREPOSITORY.txt)
TEGVERSION=$(cat /version/teg_version.txt)

docker push "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"