#!/usr/bin/env bash
set -eu

cat \
    audio.txt \
    aur-steam-deps.txt \
    core.txt \
    im.txt \
    kde.txt \
    nvidia.txt \
    sdk.txt \
    | yay -Syu --noconfirm -
yay -Sc --noconfirm

rustup default stable
