#!/bin/bash

dir=$(pwd)

cd $dir/src
make -j4

installdir=/usr/bin/bbcp
echo "Installing to "$installdir
cp $dir/bin/amd64_linux/bbcp $installdir

bbcp --version
