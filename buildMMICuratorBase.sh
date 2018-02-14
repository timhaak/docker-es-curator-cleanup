#!/usr/bin/env bash
docker build  \
  --rm \
  --pull \
  --file ./DockerfileBase \
  -t artifactory.mmih.biz:5000/es-curator-base .
