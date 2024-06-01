#!/usr/bin/env bash
set -eu

debtap steam.deb
yay -U steam.pkg.tar.zst
