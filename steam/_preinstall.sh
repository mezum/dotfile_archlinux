#!/usr/bin/env bash
set -eu

STEAM_LAUNCHER="http://repo.steampowered.com/steam/archive/precise/steam_latest.tar.gz"
PROTON_GE="https://github.com/GloriousEggroll/proton-ge-custom/releases/download/GE-Proton9-5/GE-Proton9-5.tar.gz"

curl -Lo steam.tar.gz "$STEAM_LAUNCHER"
curl -Lo protonge.tar.gz "$PROTON_GE"
