#!/bin/bash
set -euo pipefail

[ -d /version/ ] || sudo mkdir -p /version/

DOCKER_HUB=$(cat /version/DOCKER_HUB.txt)
COMMIT=$(git log -1 --pretty=tformat:%h)
BRANCH=$(git branch --show-current)
echo $DOCKER_HUB$BRANCH-$COMMIT > version.txt

sudo mv version.txt /version/