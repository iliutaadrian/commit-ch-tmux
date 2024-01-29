#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SESSION="$(tmux display-message -p '#S')"
PANE="$(tmux display-message -p '#P')"
WINDOW="$(tmux display-message -p '#I')"

tmux bind-key -r g run-shell "tmux neww -n 'git commit'  $CURRENT_DIR/commit-ch-tmux.sh '#{session_id}' '#{pane_id}' '#{window_id}' 'message'"

tmux bind-key -r G run-shell "tmux neww -n 'git commit'  $CURRENT_DIR/commit-ch-tmux.sh '#{session_id}' '#{pane_id}' '#{window_id}' 'full'"





