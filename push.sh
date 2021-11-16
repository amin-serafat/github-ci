#!/bin/bash
set -euo pipefail

echo "--- Push image ---"
DOCKERHUBACCOUNT=$(echo DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(echo DOCKERREPOSITORY.txt)
$TEGVERSION=$(echo teg_version.txt)

docker push "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"