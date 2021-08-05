#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

log_status() {
   local current_pane_logging=$(tmux show-option -gv "$(tmux display-message -p @#{session_name}_#{window_index}_#{pane_index})")
   if [ "$current_pane_logging" == "logging" ]; then
     echo 'LOG ✔'
   else
     echo 'LOG x'
   fi
}

main() {
    log_status
}

main
