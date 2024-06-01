#!/usr/bin/env bash
set -eu

tar xvf steam.tar.gz
cd steam-launcher
sudo make install

mkdir -p $HOME/.steam/steam/compatibilitytools.d/
tar xvf protonge.tar.gz -C $HOME/.steam/steam/compatibilitytools.d/
