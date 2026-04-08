#!/bin/bash

# SPDX-FileCopyrightText: 2026 Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -x
set -e

cp pub.key debs

cd debs

dpkg-scanpackages -m . /dev/null > Packages

apt-ftparchive release . > Release

gpg --default-key ppa -abs -o Release.gpg Release
gpg --default-key ppa --clearsign -o InRelease Release
