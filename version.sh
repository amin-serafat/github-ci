#!/bin/bash
set -euo pipefail

echo "--- Create folder /version/ and move all txt files here ---"
[ -d /version/ ] || sudo mkdir /version/
sudo mv DOCKER*.txt /version/