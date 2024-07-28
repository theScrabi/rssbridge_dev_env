#!/bin/bash
podman run \
	-d \
    --name "rssbridge" \
    -v "$(pwd)/rss-bridge/:/app:Z" \
    -p "8081:80" \
    rssbridge
