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
export REDIS_HOST
export REDIS_DB

echo rq worker --url redis://${REDIS_HOST}:${REDIS_PORT}/${REDIS_DB}
rq worker --url redis://${REDIS_HOST}:${REDIS_PORT}/${REDIS_DB}
