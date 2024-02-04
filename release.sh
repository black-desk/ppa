#!/bin/bash

set -x
set -e

(gh release list --json tagName | jq .\[\].tagName -r | xargs -L1 gh release delete) || true
gh release create --latest "$(date +%Y-%m-%d-%H-%M-%S)" debs/*
