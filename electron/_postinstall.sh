#!/usr/bin/env bash
set -eu

mkdir -p "$HOME/.config"
ln -sf code-flags.sh "$HOME/.config"
ln -sf electron-flags.sh "$HOME/.config"
