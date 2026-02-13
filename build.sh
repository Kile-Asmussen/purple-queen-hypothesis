#! /usr/bin/env bash

DIR=$(pwd)

cd $DIR/build-theme
. build.sh

cd $DIR
mkdir -p $DIR/theme
cp $DIR/build-theme/theme.json $DIR/theme/