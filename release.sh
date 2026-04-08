#!/bin/bash

# SPDX-FileCopyrightText: 2026 Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -x
set -e

(gh release list --json tagName | jq .\[\].tagName -r | xargs -L1 gh release delete) || true
gh release create --latest "$(date +%s)" debs/*
