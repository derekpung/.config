#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="\[\e[31m\][\[\e[m\]\[\e[38;5;172m\]\u\[\e[m\]@\[\e[38;5;153m\]\h\[\e[m\] \[\e[38;5;214m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

export PATH=$PATH:$HOME/.local/scripts
bind '"\C-f": "tmux-sessionizer\n"'
