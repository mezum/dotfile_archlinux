#!/usr/bin/env bash
set -eu

wine reg add "HKEY_CURRENT_USER\Software\Wine\FileOpenAssociations" /v Enable /d N
winetricks settings fontsmooth=gray 
