#!/bin/sh
mkdir -p /root/.rancher
[ -f /root/.rancher/cli.json ] && echo "Found /root/.rancher/cli.json" || echo "{\"accessKey\":\"$ACCESS_KEY\",\"secretKey\":\"$SECRET_KEY\",\"url\":\"$URL\",\"environment\":\"$ENV\"}" > /root/.rancher/cli.json
exec "$@"
