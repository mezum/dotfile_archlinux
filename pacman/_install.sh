#!/usr/bin/env bash
set -eu

cat \
    audio.txt \
    core.txt \
    im.txt \
    kde.txt \
    keyring.txt \
    nvidia.txt \
    sdk.txt \
    steam-deps.txt \
    | yay -Syu --noconfirm -
yay -Sc --noconfirm

git config --global credential.helper /usr/lib/git-core/git-credential-libsecret
rustup default stable
