#!/bin/sh
# IDEA: statically publish blog by pushing an updated _site to the master branch.
# assume: ../publish_alexeymk.com (or similar directory) has the same git repo

PUBLISH_DIR=../published_alexeymk.com
PUBLISH_BRANCH=master
set -ex

# copy stuff over
rm -r $PUBLISH_DIR/*


cp -r _site/* $PUBLISH_DIR

# commit everything
cd $PUBLISH_DIR
git add .
git commit -am "$*"
git push

# come back
cd -

