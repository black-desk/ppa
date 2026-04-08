#!/bin/bash

# SPDX-FileCopyrightText: 2026 Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -x
set -e

mkdir -p debs

# shellcheck disable=SC2016
jq -r 'keys[] as $k | "\($k) \(.[$k])"' <list.json |
	xargs --verbose -n 2 sh -c 'gh release download --clobber -p "$1" -D debs -R "$0"'

cd debs

../list.sh | xargs wget --content-disposition
