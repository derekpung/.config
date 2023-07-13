#!/usr/bin/env bash

nowstr=$(date +"%Y%m%dT%H%M%S")
selected=~/work/scratchnotes
selected_name=scratchnotes
tmux_running=$(pgrep tmux)
filepath=${selected}/scratch_${nowstr}.md

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c $selected -d
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected -d
fi

tmux send-keys -t $selected_name:1 'nvim ' $filepath Enter
tmux attach-session -t $selected_name
