#!/bin/bash

set -e

mkdir -p $CFG_DIR
mkdir -p $DAT_DIR/data
mkdir -p $DAT_DIR/uploads

if [ -z "$(ls -A $CFG_DIR)" ]; then
    echo "Copying default configuration to $CFG_DIR"
    cp -nRv /defaults/conf/* $CFG_DIR/
else
    echo "Config directory isn't empty, will not change anything"
fi

if [ -z "$(ls -A $DAT_DIR/data)" ]; then
    echo "Copying default data files to $DAT_DIR/data"
    cp -nRv /defaults/data/* $DAT_DIR/data/
else
    echo "Data directory isn't empty, will not change anything"
fi

/usr/local/bin/node $APP_DIR/index.js $CFG_DIR
