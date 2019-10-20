#!/usr/bin/env bash
docker build  \
  --rm \
  --no-cache \
  --pull \
  --file ./DockerfileCleanDashboard \
  -t timhaak/es-curator-cleanup-dashboard .
