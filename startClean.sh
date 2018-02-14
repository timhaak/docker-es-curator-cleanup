#!/bin/ash
rm -rf /es-curator-cleanup/curator_config.yml /es-curator-cleanup/curator_action.yml

export MAX_DAYS
export MAX_INDEXES
export MAX_SUB_INDEXES
export ES_SERVER
export ES_SERVER_PORT
export ES_SERVER_USERNAME
export ES_SERVER_PASSWORD
export FILTER_PREFIX
export LOG_LEVEL
export REDIS_PORT
export REDIS_DB
export REDIS_HOST

/usr/local/bin/python3 /es-curator-cleanup/clean_indexes.py
