#!/bin/ash
rm -rf /es-curator-cleanup/curator_config.yml /es-curator-cleanup/curator_action.yml
if /usr/local/bin/python3 /es-curator-cleanup/getIndexes.py; then
  /usr/local/bin/curator --config /es-curator-cleanup/curator_config.yml /es-curator-cleanup/curator_action.yml
fi
