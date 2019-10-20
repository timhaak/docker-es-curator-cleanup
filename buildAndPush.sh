#!/usr/bin/env bash
./buildCuratorBase.sh
docker push timhaak/es-curator-base
./buildCuratorClean.sh
docker push timhaak/es-curator-cleanup
./buildCuratorWorker.sh
docker push timhaak/es-curator-cleanup-worker
./buildCuratorLoop.sh
docker push timhaak/es-curator-cleanup-loop
./buildCuratorDashboard.sh
docker push timhaak/es-curator-cleanup-dashboard
