# ~/.bashrc

# ignore non iteractive shell
[[ $- != *i* ]] && exit
SRCDIR="$(cd "$(dirname "$(readlink "${BASH_SOURCE:-$0}")")"; pwd)"

# coloring
alias ls='ls --color=auto'
alias grep='ls --color=auto'

# interface
alias gui='startplasma-wayland'
PS1='[\u@\h \W]\$ '
