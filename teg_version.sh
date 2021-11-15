#!/bin/bash
set -euo pipefail

[ -d /version/ ] || sudo mkdir -p /version/

DOCKER_HUB=$(cat /version/DOCKER_HUB.txt)
TEGVERSION=$(git describe --tags --abbrev=0 | sed 's/[^.0-9]*//g')
# git describe --tags --abbrev=0 | sed 's/[^.0-9]*//g' > version.txt
echo $DOCKER_HUB$TEGVERSION > version.txt

sudo mv version.txt /version/