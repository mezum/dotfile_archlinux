#!/usr/bin/env bash
set -eu

sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-suspend.service
sudo systemctl enable nvidia-resume.service
