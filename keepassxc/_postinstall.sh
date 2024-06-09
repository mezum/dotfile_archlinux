#!/usr/bin/env bash
set -eu

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

cat <<_EOF_ > ~/.config/kwalletrc
[Wallet]
Enabled=false

[org.freedesktop.secrets]
apiEnabled=true

[D-BUS Service]
Name=org.freedesktop.secrets
Exec=/usr/bin/keepassxc
_EOF_
