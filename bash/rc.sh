# ~/.bashrc

# ignore non iteractive shell
[[ $- != *i* ]] && exit
SRCDIR="$(cd "$(dirname "$(readlink "${BASH_SOURCE:-$0}")")"; pwd)"

# coloring
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# node
[[ -r "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"
[[ -r "$NVM_DIR/bash_completion" ]] && . "$NVM_DIR/bash_completion"
[[ -r "$NVM_DIR/install-nvm-exec.sh" ]] && "$NVM_DIR/install-nvm-exec.sh"

# interface
alias gui='startplasma-wayland'
PS1='[\u@\h \W]\$ '
