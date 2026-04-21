#!/bin/bash

set -euo pipefail

podman run \
	-d \
    --name "rssbridge" \
    -v "$(pwd)/rss-bridge/:/app:Z" \
    -p "8088:80" \
    rssbridge
