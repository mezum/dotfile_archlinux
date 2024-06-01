#!/usr/bin/env bash
set -eu

sudo gpasswd -a $USER xremap
sudo cp 90-xremap.rules /etc/udev/rules.d/
