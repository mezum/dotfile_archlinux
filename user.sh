#!/usr/bin/env bash
set -eu
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

install() {
    (cd "$BASEDIR/$1" && "./_${2:-}install.sh")
}

# preinstall
install bash pre
install electron pre
install xremap pre

# install
install pacman

# postinstall
install xremap post
