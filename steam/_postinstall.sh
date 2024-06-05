#!/usr/bin/env bash
set -eu

# STEAM_LAUNCHER="http://repo.steampowered.com/steam/archive/precise/steam_latest.tar.gz"
PROTON_GE="https://github.com/GloriousEggroll/proton-ge-custom/releases/download/GE-Proton9-5/GE-Proton9-5.tar.gz"
COMPATIBILITYTOOLS_DIR="$HOME/.local/share/Steam/compatibilitytools.d"

# curl -Lo steam.tar.gz "$STEAM_LAUNCHER"
# tar xvf steam.tar.gz
# rm steam.tar.gz
# cd steam-launcher
# sudo make install
# cd ..
# rm -rf steam-launcher

curl -Lo protonge.tar.gz "$PROTON_GE"
mkdir -p "$COMPATIBILITYTOOLS_DIR"
tar xvf protonge.tar.gz -C "$COMPATIBILITYTOOLS_DIR/"
rm -f protonge.tar.gz

git submodule update --remote steam-devices
sudo cp steam-devices/*.rules /etc/udev/rules.d/
