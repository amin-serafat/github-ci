#!/bin/bash
set -euo pipefail

echo "--- Push image ---"

DOCKERHUBACCOUNT=$(cat /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(cat /version/DOCKERREPOSITORY.txt)
TAGVERSION=$(cat /version/tag_version.txt)

docker push "$DOCKERHUBACCOUNT/$DOCKERREPOSITORY:$TAGVERSION"