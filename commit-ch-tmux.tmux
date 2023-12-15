#!/usr/bin/env bash

# bind-key -r g run-shell 'tmux neww -n "git commit" "SESSION=$(tmux display-message -p "#S") PANE=$(tmux display-message -p "#P") WINDOW=$(tmux display-message -p "#I") ./commit-ch-tmux.sh $SESSION $PANE $WINDOW"'
#
#
#
bind-key -r g run-shell '~/.tmux/plugins/commit-ch-tmux/commit-ch-tmux.sh 2> ~/.tmux/plugins/commit-ch-tmux/error.log'
