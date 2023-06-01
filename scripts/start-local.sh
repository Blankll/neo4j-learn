#!/bin/bash -e
set -o pipefail

cd "$(dirname "$0")/.." || exit

trap "docker-compose down --remove-orphans" 0

docker-compose down --remove-orphans

docker-compose up --abort-on-container-exit
