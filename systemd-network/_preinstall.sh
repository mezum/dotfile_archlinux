#!/usr/bin/env bash
set -eu

launch-service() {
    sudo systemctl stop "$1"
    sudo systemctl enable "$1"
    sudo systemctl start "$1"
}

sudo cp -f 20-wired.network /etc/systemd/network/

launch-service systemd-networkd.service
launch-service systemd-resolved.service

