#!/bin/bash
set -euo pipefail

echo "--- Create Tag by Branch and Last Commit image ---"

BRANCH=$(cat DOCKERHUBACCOUNT.txt)
COMMIT=$(cat DOCKERREPOSITORY.txt)

echo "$BRANCH-$COMMIT" > teg_version.txt