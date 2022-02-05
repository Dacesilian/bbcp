#!/bin/bash

dir=$(pwd)

apt-get update && apt-get install libssl-dev build-essential zlib1g-dev

cd $dir/src
make -j4

installdir=/usr/bin/bbcp
echo "Installing to "$installdir
cp $dir/bin/amd64_linux/bbcp $installdir

bbcp --version
