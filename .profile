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
setterm blength 0


function start_agent {
    echo "Initializing new SSH agent..."
    touch $SSH_ENV
    chmod 600 "${SSH_ENV}"
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' >> "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
    /usr/bin/ssh-add ~/.ssh/csauder.key
}

# Source SSH settings, if applicable
#if [ -f "${SSH_ENV}" ]; then
#    . "${SSH_ENV}" > /dev/null
#    kill -0 $SSH_AGENT_PID 2>/dev/null || {
#        start_agent
#    }
#else
#    start_agent
#fi


export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR='/usr/bin/vim'
export TERMINAL='lxterm'
