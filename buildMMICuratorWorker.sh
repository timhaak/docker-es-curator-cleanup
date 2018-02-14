#!/usr/bin/env bash
docker build  \
  --rm \
  --no-cache \
  --pull \
  --file ./DockerfileClean \
  -t artifactory.mmih.biz:5000/es-curator-cleanup-worker .
