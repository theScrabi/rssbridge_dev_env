#!/bin/bash

docker exec -it rssbridge /bin/bash -c "rm -r /app/cache/*"
docker exec -it rssbridge /bin/bash -c "pkill apache"
docker rm rssbridge
./run.sh
