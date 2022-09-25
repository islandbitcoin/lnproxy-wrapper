#!/bin/sh

set -e

echo "Setting environment variables..."
export EXPIRY_BUFFER=$(yq e '.expiry-buffer' /root/start9/config.yaml)
export FEE_BASE_MSAT=$(yq e '.fee-base-msat' /root/start9/config.yaml)
export FEE_PPM=$(yq e '.fee-ppm' /root/start9/config.yaml)

while true; do { sleep 100; } done

echo 'Starting lnproxy...'
exec tini -p SIGTERM go run lnproxy.go