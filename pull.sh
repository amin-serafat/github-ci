#!/bin/bash
set -euo pipefail

echo "--- Pull image ---"

DOCKERHUBACCOUNT=$(cat /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(cat /version/DOCKERREPOSITORY.txt)
TEGVERSION=$(cat /version/teg_version.txt)

docker pull "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TEGVERSION"