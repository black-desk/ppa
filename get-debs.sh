#!/bin/bash

set -x
set -e

mkdir -p debs

jq -r 'keys[] as $k | "\($k) \(.[$k])"' <list.json | xargs -n 2 sh -c 'gh release download -p "$1" -D debs -R "$0"'
