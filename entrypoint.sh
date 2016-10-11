#!/bin/sh
mkdir -p /root/.rancher
echo "{\"accessKey\":\"$ACCESS_KEY\",\"secretKey\":\"$SECRET_KEY\",\"url\":\"$URL\",\"environment\":\"$ENV\"}" > /root/.rancher/cli.json
exec "$@"
