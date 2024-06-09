#!/usr/bin/env bash
set -eu

STEAM_LAUNCHER="https://cdn.akamai.steamstatic.com/client/installer/steam.deb"
PROTON_GE="https://github.com/GloriousEggroll/proton-ge-custom/releases/download/GE-Proton9-6/GE-Proton9-6.tar.gz"

STEAM_INSTALL_DIR="/opt/steam"
COMPATIBILITYTOOLS_DIR="$HOME/.local/share/Steam/compatibilitytools.d"

# curl -Lo steam.deb "$STEAM_LAUNCHER"
# ar x steam.deb data.tar.xz
# sudo mkdir -p "$STEAM_INSTALL_DIR"
# sudo tar xf data.tar.xz -C "$STEAM_INSTALL_DIR"
# rm steam.deb data.tar.xz

# sudo ln -sf /opt/steam/usr/bin/steam /usr/bin/steam
# sudo ln -sf /opt/steam/usr/bin/steamdeps /usr/bin/steamdeps
# sudo ln -sf /opt/steam/usr/share/applications/steam.desktop /usr/share/applications/steam.desktop

curl -Lo protonge.tar.gz "$PROTON_GE"
mkdir -p "$COMPATIBILITYTOOLS_DIR"
tar xvf protonge.tar.gz -C "$COMPATIBILITYTOOLS_DIR/"
rm -f protonge.tar.gz

git submodule update --remote steam-devices
sudo cp steam-devices/*.rules /etc/udev/rules.d/
