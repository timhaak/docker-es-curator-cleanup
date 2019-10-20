#!/usr/bin/env bash
docker build  \
  --rm \
  --no-cache \
  --pull \
  --file ./DockerfileCleanWorker \
  -t timhaak/es-curator-cleanup-worker .
