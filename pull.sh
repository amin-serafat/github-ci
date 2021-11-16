#!/bin/bash
set -euo pipefail

echo "--- Build image ---"
DOCKERHUBACCOUNT=$(echo /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(echo /version/DOCKERREPOSITORY.txt)
$TEGVERSION=$(echo /version/teg_version.txt)

docker pull "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"