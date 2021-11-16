#!/bin/bash
# set -euo pipefail

echo "--- Create folder /version/ and moved all txt files here ---"

[ -d /version/ ] || sudo mkdir /version/
sudo mv *.txt /version/