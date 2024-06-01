# ~/.bashrc

# ignore non iteractive shell
[[ $- != *i* ]] && return

# coloring
alias ls='ls --color=auto'
alias grep='ls --color=auto'

# interface
alias gui='startplasma-wayland'
PS1='[\u@\h \W]\$ '
