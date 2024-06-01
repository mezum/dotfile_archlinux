#!/usr/bin/env bash
set -eu
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

(cd "$BASEDIR/bash" && ./_install.sh)
(cd "$BASEDIR/electron" && ./_install.sh)
