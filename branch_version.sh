#!/bin/bash
set -euo pipefail

[ -d /version/ ] || sudo mkdir -p /version/

DOCKERHUBACCOUNT=$(echo /version/DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(echo /version/DOCKERREPOSITORY.txt)

$TEGVERSION=$($BRANCH-$COMMIT)
echo $TEGVERSION > teg_version.txt