#!/bin/sh
mkdir -p /home/docker-user/.rancher
[ -f /home/docker-user/.rancher/cli.json ] && echo "Found /home/docker-user/.rancher/cli.json" || echo "{\"accessKey\":\"$ACCESS_KEY\",\"secretKey\":\"$SECRET_KEY\",\"url\":\"$URL\",\"environment\":\"$ENV\"}" > /home/docker-user/.rancher/cli.json
exec "$@"
