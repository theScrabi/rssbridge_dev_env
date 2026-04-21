#!/bin/bash

set -euo pipefail

phpcs rss-bridge --standard=rss-bridge/phpcs.xml --warning-severity=0 --extensions=php -p
