#!/usr/bin/env bash
set -eu

cat \
    audio.txt \
    aur-steam-deps.txt \
    core.txt \
    im.txt \
    kde.txt \
    nvidia.txt \
    | yay -Syyyu --noconfirm -
yay -Sc --noconfirm
