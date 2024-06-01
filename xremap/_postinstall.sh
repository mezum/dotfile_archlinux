#!/usr/bin/env bash
set -eu

mkdir -p \
    "$HOME/.config/xremap/" \
    "$HOME/.config/autostart/"

ln -sf config.yaml "$HOME/.config/xremap/"
ln -sf xremap.desktop "$HOME/.config/autostart/"
