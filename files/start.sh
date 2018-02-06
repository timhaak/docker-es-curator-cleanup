#!/bin/ash
/usr/local/bin/python3 /es-curator-cleanup/getIndexes.py
/usr/local/bin/curator --config /es-curator-cleanup/curator_config.yml /es-curator-cleanup/curator_action.yml
