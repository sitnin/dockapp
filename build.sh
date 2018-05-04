#!/bin/bash

set -e

cd app

yarn clean

yarn build

cd ..

docker build -t dockapp .
