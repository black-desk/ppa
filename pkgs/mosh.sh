#!/bin/bash

set -x
set -e

git clone https://github.com/mobile-shell/mosh

pushd ./mosh

sudo apt build-dep .
sudo apt install git-buildpackage

./build-package.sh

popd
