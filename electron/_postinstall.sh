#!/usr/bin/env bash
set -eu

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

mkdir -p "$HOME/.config"
ln -sf "$BASEDIR/code-flags.conf" "$HOME/.config"
ln -sf "$BASEDIR/electron-flags.conf" "$HOME/.config"
