#!/bin/bash

set -e

docker buildx build --platform=linux/amd64,linux/arm64 --push --tag ipepe/traefik .
