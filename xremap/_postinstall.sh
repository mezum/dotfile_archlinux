#!/usr/bin/env bash
set -eu

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

mkdir -p \
    "$HOME/.config/xremap/" \
    "$HOME/.config/autostart/"

ln -sf "$BASEDIR/config.yaml" "$HOME/.config/xremap/"
ln -sf "$BASEDIR/xremap.desktop" "$HOME/.config/autostart/"

cargo install xremap
