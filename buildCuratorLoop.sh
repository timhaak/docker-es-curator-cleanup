#!/usr/bin/env bash
docker build  \
  --rm \
  --no-cache \
  --pull \
  --file ./DockerfileCleanLoop \
  -t timhaak/es-curator-cleanup-loop .
