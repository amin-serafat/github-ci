#!/bin/bash
set -euo pipefail

echo "--- Send meesage to Slack ---"

# MESSAGE=$(echo "Test message!")
# DATA="--data '{\"text\":\"$MESSAGE\"}'"
# curl -X POST -H 'Content-type: application/json' $DATA https://hooks.slack.com/services/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

curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World!"}' https://hooks.slack.com/services/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

# first="curl -X POST -H 'Content-type: application/json' --data '{\"text\":\""
# second="\"}' https://hooks.slack.com/services/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"

# echo "#!/bin/bash" > sendmessage.sh
# echo $first$MESSAGE$second >> sendmessage.sh
# chmod u+x sendmessage.sh
# ./sendmessage.sh


