#!/bin/bash
set -euo pipefail

echo "--- Pull image ---"

DOCKERHUBACCOUNT=$(cat /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(cat /version/DOCKERREPOSITORY.txt)
TAGVERSION=$(cat /version/tag_version.txt)

docker pull "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TAGVERSION"