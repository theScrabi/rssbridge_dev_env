#!/bin/bash

set -euo pipefail

cp config.ini.php rss-bridge
podman build --tag=rssbridge rss-bridge
