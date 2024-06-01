#!/usr/bin/env bash
set -eu
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

# install
(cd "$BASEDIR/bash" && ./_install.sh)
(cd "$BASEDIR/electron" && ./_install.sh)
(cd "$BASEDIR/xremap" && ./_install.sh)

# postinstall
(cd "$BASEDIR/xremap" && ./_postinstall.sh)
