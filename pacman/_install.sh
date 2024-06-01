#!/usr/bin/env bash
set -eu

cat \
    audio.txt \
    core.txt \
    im.txt \
    kde.txt \
    nvidia.txt \
    sdk.txt \
    steam-deps.txt \
    | yay -Syu --noconfirm -
yay -Sc --noconfirm

rustup default stable
