#!/usr/bin/env bash
set -eu
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

install() {
    local FILENAME="_${1:-}install.sh"
    while read -r FILE; do
        (cd $(dirname "$FILE") && "./$FILENAME")
    done < <(find "$BASEDIR" -mindepth 2 -maxdepth 2 -name "$FILENAME")
}

install pre
install
install post
