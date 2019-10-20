#!/usr/bin/env bash
docker build  \
  --rm \
  --pull \
  --file ./DockerfileBase \
  -t timhaak/es-curator-base .
