#!/usr/bin/env bash

nowstr=$(date +"%Y%m%dT%H%M%S")
selected=~/work/scratchnotes
selected_name=scratchnotes
tmux_running=$(pgrep tmux)

nviminit() {
    filepath=${selected}/scratch_${nowstr}.md
    nvim $filepath
}
nviminit

