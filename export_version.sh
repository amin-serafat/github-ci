#!/bin/bash
set -euo pipefail

[ -d /version/ ] || sudo mkdir -p /version/
git describe --tags --abbrev=0 | sed 's/[^.0-9]*//g' > version.txt
sudo mv version.txt /version/