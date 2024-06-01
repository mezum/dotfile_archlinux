#!/usr/bin/env bash
set -eu
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

sudo systemctl enable systemd-networkd.service
sudo systemctl enable systemd-resolved.service
