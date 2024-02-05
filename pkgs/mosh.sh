#!/bin/bash

set -x
set -e

git clone https://github.com/mobile-shell/mosh

pushd ./mosh

sudo apt build-dep .

./build-package.sh

popd
