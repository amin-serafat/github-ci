#!/bin/bash
set -euo pipefail

[ -d /version/ ] || sudo mkdir -p /version/

# git describe --tags --abbrev=0 | sed 's/[^.0-9]*//g' > version.txt
COMMIT=$(git log -1 --pretty=tformat:%h)
BRANCH=$(git branch --show-current)
TEGVERSION=$(git describe --tags --abbrev=0 | sed 's/[^.0-9]*//g')
# echo $DOCKER_IMAGE$BRANCH-$COMMIT > version.txt
echo $DOCKER_IMAGE$TEGVERSION > version.txt

sudo mv version.txt /version/