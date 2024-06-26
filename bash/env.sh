# ~/.profile

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# GBM
export GBM_BACKEND="nvidia-drm"
export __GLX_VENDOR_LIBRARY_NAME="nvidia"

# Wayland
export GDK_BACKEND="wayland"
# export QT_QPA_PLATFORM="wayland;xcb"
export SDL_VIDEODRIVER="wayland,x11,windows"
export XDG_SESSION_TYPE="wayland"
export ELECTRON_OZONE_PLATFORM_HINT="auto"

# VA-API
export NVD_BACKEND="direct"
export LIBVA_DRIVER_NAME="nvidia"

# IME
export XMODIFIERS="@im=fcitx"
export MOZ_ENABLE_WAYLAND=1

# cargo
export PATH="$HOME/.cargo/bin:$PATH"

# node
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
