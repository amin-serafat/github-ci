#!/bin/bash
set -euo pipefail

echo "--- Create Tag by Branch and Last Commit image ---"

BRANCH=$(git branch --show-current)
COMMIT=$(git log -1 --pretty=tformat:%h)

echo "$BRANCH-$COMMIT" > tag_version.txt
sudo mv *.txt /version/