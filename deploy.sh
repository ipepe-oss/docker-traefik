#!/bin/bash


docker build . -t ipepe/traefik
docker build . -t ipepe/traefik:1.7
docker push ipepe/traefik:1.7
docker push ipepe/traefik