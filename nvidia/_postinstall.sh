#!/usr/bin/env bash
set -eu

sudo gpasswd -a $USER video

# udo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-suspend.service
sudo systemctl enable nvidia-resume.service
echo "options nvidia NVreg_PreserveVideoMemoryAllocations=1 NVreg_TemporaryFilePath=/var/tmp" | sudo tee /etc/modprobe.d/nvidia.conf
sudo nvidia-xconfig --allow-hmd=yes
