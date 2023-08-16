#!/bin/bash

set -x
set -e

gh release create --latest $(date +%m-%d-%y) debs/*