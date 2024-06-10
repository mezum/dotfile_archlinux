#!/usr/bin/env bash
set -eu
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

install-sh() {
    local FILENAME="_${1:-}install.sh"
    while read -r FILE; do
        (cd $(dirname "$FILE") && "./$FILENAME")
    done < <(find "$BASEDIR" -mindepth 2 -maxdepth 2 -name "$FILENAME")
}

#install-sh pre
#install-sh
install-sh post
