#!/bin/bash
set -euo pipefail

echo "--- Create Tag by Branch Tag ---"

TEGVERSION=$(git describe --tags --abbrev=0 | sed 's/[^.0-9]*//g')

echo $TEGVERSION > teg_version.txt
sudo mv *.txt /version/