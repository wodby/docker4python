#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

docker-compose build --force-rm --no-cache python
docker-compose up -d
docker-compose exec postgres make check-ready -f /usr/local/bin/actions.mk max_try=12 wait_seconds=5

docker-compose exec python tests.sh

docker-compose down
