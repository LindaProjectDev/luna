#!/usr/bin/env bash
set -euo pipefail

IMAGE="${1:-luna:local}"
PORT="${2:-10080}"

docker build -t "$IMAGE" .
docker run -d --name "luna-dev-${PORT}" --restart unless-stopped -p "${PORT}:8080" "$IMAGE"

echo "OK: http://localhost:${PORT}"
echo "Health: http://localhost:${PORT}/actuator/health"
