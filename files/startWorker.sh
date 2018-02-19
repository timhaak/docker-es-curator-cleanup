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

# echo "Running the following command"
# echo rq worker -v --url redis://${REDIS_HOST}:${REDIS_PORT}/${REDIS_DB} --logging_level ${WORKER_LOGGING_LEVEL}
# echo ""
# echo ""
# echo ""
#
# # while [ 1 ]
# # do
# #     sleep 5
# # done
# rq worker -v --url redis://${REDIS_HOST}:${REDIS_PORT}/${REDIS_DB} --logging_level ${WORKER_LOGGING_LEVEL}
# export DASHBORD_PORT

# echo "Running the following command"
# echo celery -A ${JOB_QUEUE_NAME} worker --loglevel=${LOG_LEVEL} --concurrency=1 -n worker1@%h
# echo ""
# echo ""
# echo ""

# while [ 1 ]
# do
#     sleep 5
# done
CMD="celery \
  --app tasks \
  worker \
  --loglevel=${LOG_LEVEL} \
  --concurrency=1 \
  -n worker1@%h"

echo "Running the following command"
echo ${CMD}
echo ""
echo ""
echo ""

${CMD}
