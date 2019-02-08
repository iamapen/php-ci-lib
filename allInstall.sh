#!/bin/bash
BASE_DIR=$(cd $(dirname $0);pwd)
cd $BASE_DIR

DIRS=`find . -type d  | grep -v ./.git | grep -v "^\.$"`
for DIR in $DIRS
do
  pushd $DIR
  composer install --ignore-platform-reqs
  popd
done

