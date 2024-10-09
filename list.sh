#!/bin/bash

echo "https://discord.com/api/download/stable?platform=linux&format=deb"

# https://bbs.deepin.org/zh/post/279737#post_1654163
curl -fs https://im.qq.com/rainbow/linuxQQDownload |
	sed -nE 's/.*var params\s?=\s?(\{.*\});.*/\1/p' |
	jq -r '.[] | select(type=="object") | .deb'
