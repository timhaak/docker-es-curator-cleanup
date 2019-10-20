#!/usr/bin/env bash
docker build  \
  --rm \
  --no-cache \
  --pull \
  --file ./DockerfileClean \
  -t timhaak/es-curator-cleanup .
