#!/bin/bash
set -euo pipefail

[ -d /version/ ] || sudo mkdir -p /version/

BRANCH=$(echo DOCKERHUBACCOUNT.txt)
COMMIT=$(echo DOCKERREPOSITORY.txt)

TEGVERSION=$(echo "$BRANCH-$COMMIT")
echo $TEGVERSION > teg_version.txt