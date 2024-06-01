#!/usr/bin/env bash
set -eu

sudo groupadd -f xremap
sudo gpasswd -a $USER xremap
sudo cp -f 65-xremap.rules /etc/udev/rules.d/
