#! /usr/bin/env bash
# make sure the cluster is started via 'start-cluster.sh'
# make sure to open a pipe on port 9000 'nc -l 9000' in a separate shell and time some words
flink run build/libs/example-1.0-all.jar --port 9000 &
tail -f /tmp/flink-logs/flink-*-taskexecutor-*.out
