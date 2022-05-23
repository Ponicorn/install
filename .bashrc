# shameless copy and credit to ttyb0
# .bashrc file
setterm blength 0
# colors
BLK='\[\033[00;30m\]'
RED='\[\033[00;31m\]'
GRN='\[\033[00;32m\]'
YEL='\[\033[00;33m\]'
BLU='\[\033[00;34m\]'
PRL='\[\033[00;35m\]'
CYN='\[\033[00;36m\]'
WHT='\[\033[00;37m\]'

# bold color
BLKb='\[\033[01;30m\]'
REDb='\[\033[01;31m\]'
GRNb='\[\033[01;32m\]'
YELb='\[\033[01;33m\]'
BLUb='\[\033[01;34m\]'
PRLb='\[\033[01;35m\]'
CYNb='\[\033[01;36m\]'
WHTb='\[\033[01;37m\]'

case $USER in 
    "root")
        PS1="$REDb\u$YELb@$REDb\h$YELb:$PRLb\w$YELb\\$ $WHT"
        ;;
    *)
        PS1="$PRLb\u$BLUb@$PRLb\h$BLUb:$YELb\w$BLUb\\$ $WHT"
        ;;
esac

# unset color     
unset BLK  RED  GRN  YEL  BLU  PRL  CYN  WHT
unset BLKb REDb GRNb YELb BLUb PRLb CYNb WHTb

# basic alias
alias ls='ls --color=auto'
alias ll='ls -la'
alias grep='grep --color=auto'

# advance alias if exist
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# xtrem things
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;\u@\h:\w\a\]$PS1"
        ;;
    *)
        ;;
esac

# autocompletion du cul
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion 
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# alias docker
alias dcomp='docker compose'
alias docker-compose='docker compose'
alias dexec='docker compose exec'

export EDITOR='/usr/bin/vim'

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi
