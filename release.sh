#!/bin/bash

set -x
set -e

gh release create --latest "$(date +%Y-%m-%d-%H-%M-%S)" debs/*
