#!/usr/bin/env bash
set -eu

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

# sudo ln -sf "/usr/share/fontconfig/conf.avail/70-no-bitmaps.conf" "/etc/fonts/conf.d/"
sudo ln -sf "$BASEDIR/29-replace-bitmap-fonts.conf" "/etc/fonts/conf.d/"
sudo ln -sf "$BASEDIR/29-replace-msfonts.conf" "/etc/fonts/conf.d/"
