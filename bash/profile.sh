# ~/.bash_profile

SRCDIR="$(cd "$(dirname "$(readlink "${BASH_SOURCE:-$0}")")"; pwd)"

run_if_exists() {
    [[ -r "$1" ]] && . "$@"
}

run_if_exists "$SRCDIR/env.sh"
run_if_exists "$SRCDIR/rc.sh"
