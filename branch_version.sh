#!/bin/bash
set -euo pipefail

DOCKER_IMAGE="alehmudrak/github-action:"

[ -d /version/ ] || sudo mkdir -p /version/

COMMIT=$(git log -1 --pretty=tformat:%h)
BRANCH=$(git branch --show-current)
echo $DOCKER_IMAGE$BRANCH-$COMMIT > version.txt

sudo mv version.txt /version/