#!/usr/bin/env bash
docker build  \
  --rm \
  --no-cache \
  --pull \
  --file ./DockerfileCleanWorker \
  -t artifactory.mmih.biz:5000/es-curator-cleanup-worker .
