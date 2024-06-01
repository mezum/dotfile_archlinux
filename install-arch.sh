#!/usr/bin/env bash
set -eu

echo 'WARN: Run on the Arch Linux installer.' >&2
echo 'WARN: Mount your destination disk on "/mnt"' >&2
echo -n 'Continue? [y/n]: ' >&2
IFS= read -r CONTINUE
[[ "$CONTINUE" != 'y' ]] && exit

reflector --country 'Japan' --protocol 'https' --age 48 --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syy --noconfirm
pacstrap -K /mnt \
    base \
    linux-zen \
    linux-zen-headers \
    linux-firmware \
    intel-ucode \
    refind \
    git \
    vim \
    sudo \
    fakeroot \
    debugedit
genfstab -U /mnt > /mnt/etc/fstab
echo EDITOR=vim > /mnt/etc/environment
echo LANG=en_US.UTF-8 > /mnt/etc/locale.conf
echo KEYMAP=jp106 > /mnt/etc/vconsole.conf
