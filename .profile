# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH to sbin
if [ -d "/sbin" ] ; then
    PATH="$PATH:/sbin"
fi

# no bell no hell
setterm -blength 0

export EDITOR='/usr/bin/vim'
