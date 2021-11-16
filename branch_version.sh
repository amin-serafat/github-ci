#!/bin/bash
set -euo pipefail

[ -d /version/ ] || sudo mkdir -p /version/

DOCKERHUBACCOUNT=$(echo DOCKERHUBACCOUNT.txt)
DOCKERREPOSITORY=$(echo DOCKERREPOSITORY.txt)

$TEGVERSION=$($BRANCH-$COMMIT)
echo $TEGVERSION > teg_version.txt