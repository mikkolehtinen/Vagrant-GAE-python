#!/bin/sh

python2.5 /opt/google_appengine/dev_appserver.py -a 0.0.0.0 /netcycler --require_indexes --datastore_path=/netcycler/testdata/datastore.sqlite.tmp --use_sqlite --port=8080 --default_partition=''