#!/bin/bash

podman exec -it rssbridge /bin/bash -c 'rm -fr /app/cache/* && kill $(for I in $(ls /proc | grep "[0-9]"); do echo -n "$I "; cat /proc/$I/comm; done 2> /dev/null | grep php | grep "[0-9]") 2> /dev/null'

podman stop rssbridge
podman rm rssbridge
