#!/bin/ash
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
export WORKER_TIMEOUT
export WORKER_RESULT_TIMEOUT
export WORKER_LOGGING_LEVEL
export JOB_QUEUE_NAME
export DASHBORD_PORT

rm -rf /es-curator-cleanup/curator_config.yml /es-curator-cleanup/curator_action.yml

# /usr/local/bin/python3 /es-curator-cleanup/clean_indexes.py
/usr/local/bin/python3 /es-curator-cleanup/test.py
