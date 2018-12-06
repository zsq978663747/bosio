#!/bin/bash

DATA_DIR=/root/bostest-zsq/lib-test/bosio
mkdir -p $DATA_DIR/data
#cp -r config $DATA_DIR

docker-compose -f docker-compose-kylin-init.yaml up -d
