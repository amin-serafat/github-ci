#!/bin/bash
set -euo pipefail

echo "--- Create folder /version/ and move all txt files here ---"
sudo mkdir /version/
sudo mv DOCKER_HUB.* /version/