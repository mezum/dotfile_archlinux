#!/usr/bin/env bash
set -eu

git submodule update -i steam-devices/
curl -Lo steam.deb https://cdn.akamai.steamstatic.com/client/installer/steam.deb
sudo cp -f steam-devices/*.rules /etc/udev/rules.d/
