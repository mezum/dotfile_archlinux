#!/usr/bin/env bash
set -eu

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
