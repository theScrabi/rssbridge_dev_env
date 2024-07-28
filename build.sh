#!/bin/bash

cp config.ini.php rss-bridge
podman build --tag=rssbridge rss-bridge
