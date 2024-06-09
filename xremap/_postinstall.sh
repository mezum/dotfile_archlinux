#!/usr/bin/env bash
set -eu

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

mkdir -p \
    "$HOME/.config/xremap/" \
    "$HOME/.config/autostart/"

cargo install xremap --features kde
sudo gpasswd -a $USER input

sudo cp -f 65-xremap.rules /etc/udev/rules.d/
ln -sf "$BASEDIR/config.yml" "$HOME/.config/xremap/"

cat <<_EOF_ > "$HOME/.config/autostart/xremap.desktop"
[Desktop Entry]
Exec='$HOME/.cargo/bin/xremap' '$HOME/.config/xremap/config.yml'
Name=xremap
StartupNotify=true
Type=Application
_EOF_
