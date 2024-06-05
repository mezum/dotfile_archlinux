#!/usr/bin/env bash
set -eu

cat \
    core.txt \
    fonts.txt \
    im.txt \
    kde.txt \
    keyring.txt \
    media.txt \
    nvidia.txt \
    obs.txt \
    sdk.txt \
    steam.txt \
    utils.txt \
    | tr -s '\n' '\n' \
    | yay -Syu --noconfirm -
yay -Sc --noconfirm

git config --global credential.helper /usr/lib/git-core/git-credential-libsecret

rustup default stable

