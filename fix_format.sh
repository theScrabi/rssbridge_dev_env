#!/bin/bash

set -euo pipefail

phpcbf rss-bridge --standard=rss-bridge/phpcs.xml --warning-severity=0 --extensions=php -p
