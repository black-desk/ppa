#!/bin/bash

set -x
set -e

mkdir -p debs

# shellcheck disable=SC2016
jq -r 'keys[] as $k | "\($k) \(.[$k])"' <list.json |
	xargs --verbose -n 2 sh -c 'gh release download --clobber -p "$1" -D debs -R "$0"'

cd debs

# https://bbs.deepin.org/zh/post/279737#post_1654163
curl -fs https://im.qq.com/rainbow/linuxQQDownload |
	sed -nE 's/.*var params\s?=\s?(\{.*\});.*/\1/p' |
	jq '.[] | select(type=="object") | .deb' |
	xargs wget
