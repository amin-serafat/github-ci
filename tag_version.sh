#!/bin/bash
set -euo pipefail

echo "--- Create Tag by Branch Tag ---"

TAGVERSION=$(git describe --tags --abbrev=0 | sed 's/[^.0-9]*//g')

echo $TAGVERSION > tag_version.txt
sudo mv *.txt /version/