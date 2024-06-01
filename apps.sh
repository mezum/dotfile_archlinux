#!/usr/bin/env bash
set -eu
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

(cd "$BASEDIR/pacman" && ./_install.sh)
