#!/bin/bash

# --- For test --- delete ---
# cd ../github-action/
# DOCKER_IMAGE="alehmudrak/github-action:"
# --- delete ---

sudo mkdir /version/
cd $HOME/github-action/
COMMIT=$(git log -1 --pretty=tformat:%h)
BRANCH=$(git branch --show-current)
LASTTAG=$(git describe --tags --abbrev=0 | sed 's/[^.0-9]*//g')
echo $DOCKER_IMAGE$LASTTAG > version.txt
sudo mv version.txt /version/

# echo "Project version: $DOCKER_IMAGE$LASTTAG"
# echo "::set-output name=PROJECT_VERSION::$DOCKER_IMAGE$LASTTAG"