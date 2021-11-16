#!/bin/bash
set -euo pipefail

echo "--- Push image ---"
DOCKERHUBACCOUNT=$(echo /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(echo /version/DOCKERREPOSITORY.txt)
$TEGVERSION=$(echo /version/teg_version.txt)

docker push "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"