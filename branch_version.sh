#!/bin/bash
set -euo pipefail

echo "--- Create Tag by Branch and Last Commit image ---"

BRANCH=$(cat DOCKERHUBACCOUNT.txt)
COMMIT=$(cat DOCKERREPOSITORY.txt)

TEGVERSION=$(echo "$BRANCH-$COMMIT")
echo $TEGVERSION > teg_version.txt