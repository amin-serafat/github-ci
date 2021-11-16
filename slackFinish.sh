#!/bin/bash
set -euo pipefail

sudo apt update
sudo apt install curl

echo "--- Send meesage to Slack ---"

curl -X POST -H 'Content-type: application/json' \
    --data '{"text":"Finish workflow github-action."}' \
    https://hooks.slack.com/services/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
