#!/bin/bash

set -x
set -e

mkdir debs
cat list.json |
    jq -r .repos[] |
        xargs -I \{\} \
            gh release download -p "*.deb" -D debs -R \{\}
