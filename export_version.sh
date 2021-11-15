#!/bin/bash
# DOCKER_IMAGE="alehmudrak/github-action:"

[ -d /version/ ] || sudo mkdir -p /version/
COMMIT=$(git log -1 --pretty=tformat:%h)
BRANCH=$(git branch --show-current)
LASTTAG=$(git describe --tags --abbrev=0 | sed 's/[^.0-9]*//g')
echo $DOCKER_IMAGE$LASTTAG > version.txt
sudo mv version.txt /version/

cat /version/version.txt