#!/usr/bin/env bash
set -eu

launch-service() {
    sudo systemctl stop "$1"
    sudo systemctl enable "$1"
    sudo systemctl start "$1"
}

launch-service dhcpcd.service
