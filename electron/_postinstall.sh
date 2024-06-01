#!/usr/bin/env bash
set -eu

mkdir -p "$HOME/.config"
ln -sf "$BASEDIR/code-flags.sh" "$HOME/.config"
ln -sf "$BASEDIR/electron-flags.sh" "$HOME/.config"
