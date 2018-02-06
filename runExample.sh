#!/usr/bin/env bash
docker run \
  -it \
  --rm \
  -e MAX_DAYS="3" \
  -e MAX_INDEXES="1" \
  -e MAX_SUB_INDEXES="1" \
  -e ES_SERVER="" \
  -e ES_SERVER_PORT="" \
  -e ES_SERVER_USERNAME="" \
  -e ES_SERVER_PASSWORD="" \
  timhaak/es-curator-cleanup
