#!/bin/bash
docker run \
    -d \
    --name "rssbridge" \
    --mount "type=bind,source=$(pwd)/rss-bridge/,target=/app" \
    -p "8081:80" \
    rssbridge
