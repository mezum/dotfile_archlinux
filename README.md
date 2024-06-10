# Utility scripts for Arch Linux

This repository contains utility scripts for Arch Linux.

Run `install-arch.sh` to install Arch Linux on `/mnt`, it is usable on an installer.
Run `system.sh` to setup new installed Arch Linux, it is usable after `arch-chroot`.
Run `user.sh` to setup the user environment and applications.

# Cheat sheet

## format disk

```bash
mkfs.vfat -F 32 /dev/nvme1n1p1
mkfs.ext4 /dev/nvme1n1p3
mkswap /dev/nvme1n1p2
```

## mount

```bash
mount /dev/nvme1n1p3 /mnt
mount --mkdir /dev/nvme1n1p1 /mnt/boot
swapon /dev/nvme1n1p2
```

## chroot

```bash
arch-chroot /mnt
```

## hostname

```bash
echo -n $HOST_NAME > /etc/hostname
```

## useradd

```bash
useradd -m $USER_NAME
passwd $USER_NAME
gpasswd -a $USER_NAME $GROUP_NAME
```

## sudo

```bash
# when first
visudo
# uncomment wheel group rule.

# add user to sudoers
gpasswd -a $USER_NAME wheel
```

## locale
```bash
# /etc/locale.gen
# uncomment
en_US.UTF-8 UTF-8
ja_JP.UTF-8 UTF-8

sudo locale-gen
sudo echo LANG=en_US.UTF-8 > /etc/locale.conf
```

## multilib

```bash
# /etc/pacman.conf
[multilib]
Include = /etc/pacman.d/mirrorlist

## ked-unstable
```bash
# /etc/pacman.conf
# note: insert before core-testing
[kde-unstable]
Include = /etc/pacman.d/mirrorlist
```

## yay

```bash
git clone https://aur.archlinux.org/yay-bin
cd yay-bin
makepkg -si
```

## mkinitcpio

```bash
echo "options nvidia NVreg_PreserveVideoMemoryAllocations=1 NVreg_TemporaryFilePath=/var/tmp" | sudo cat /etc/modprobe.d/nvidia.conf

# /etc/mkinitcpio.conf
MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)
FILES=(/etc/modprobe.d/nvidia.conf)
# remove kms from HOOKS

sudo mkinitcpio -P
```

## Re-enable display on kscreen

```bash
kscreen-doctor output.DP-2.enable
```
