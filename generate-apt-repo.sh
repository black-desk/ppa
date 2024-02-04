#!/bin/bash

set -x
set -e

cp pub.key debs

cd debs

dpkg-scanpackages -m . /dev/null > Packages

apt-ftparchive release . > Release

gpg --default-key ppa -abs -o Release.gpg Release
gpg --default-key ppa --clearsign -o InRelease Release
