#!/bin/bash
set -euo pipefail

trap "docker-compose down --volumes --remove-orphans" 0

docker-compose run --rm app /bin/bash

