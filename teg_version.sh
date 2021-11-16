#!/bin/bash
set -euo pipefail

[ -d "/version/" ] || sudo mkdir -p /version/

TEGVERSION=$(git describe --tags --abbrev=0 | sed 's/[^.0-9]*//g')

echo $TEGVERSION > teg_version.txt