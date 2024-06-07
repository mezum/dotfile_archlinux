#!/usr/bin/env bash
set -eu

STEAM_CONFIG_DIR="$HOME/.local/share/Steam/config"
STEAM_VR_SETTINGS="$STEAM_CONFIG_DIR/steamvr.vrsettings"
STEAM_VR_SETTINGS_BACKUP="$STEAM_VR_SETTINGS.backup"

cp "$STEAM_VR_SETTINGS" "$STEAM_VR_SETTINGS_BACKUP"
jq \
    '. *= {"steamvr": {"enableLinuxVulkanAsync": true}}' \
    "$STEAM_VR_SETTINGS_BACKUP" \
    > "$STEAM_VR_SETTINGS"
