#!/usr/bin/env bash
./buildMMICuratorBase.sh
docker push artifactory.mmih.biz:5000/es-curator-base
./buildMMICuratorClean.sh
docker push artifactory.mmih.biz:5000/es-curator-cleanup
./buildMMICuratorWorker.sh
docker push artifactory.mmih.biz:5000/es-curator-cleanup-worker
./buildMMICuratorLoop.sh
docker push artifactory.mmih.biz:5000/es-curator-cleanup-loop
./buildMMICuratorDashboard.sh
docker push artifactory.mmih.biz:5000/es-curator-cleanup-dashboard
