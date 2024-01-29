#!/usr/bin/env bash

SESSION=$1
PANE=$2
WINDOW=$3
MODE=$4

# DEBUG
# echo "SESSION: $SESSION"
# echo "WINDOW: $WINDOW"
# echo "PANE: $PANE"
# echo "MODE: $MODE"


if [ -z "$SESSION" ] || [ -z "$PANE" ] || [ -z "$WINDOW" ]; then
    echo "Not in tmux"
    exit
fi
echo
echo "GIT Commit Builder"

list=(
    "feat: features - a new feature ✨"
    "fix: bug fixes - a bug fix 🐛"
    "docs: documentation - documentation only changes 📚"
    "style: styles - white-space, formatting, missing semi-colons, etc 💎"
    "refactor: code refactoring  📦"
    "perf: performance improvements 🚀"
    "test: adding missing tests or correcting existing tests 🚨"
    "build: build system or external dependencies (gulp, broccoli, npm) 🛠"
    "ci: changes to our ci configuration (travis, circle, browserstack, saucelabs) ⚙️"
    "chore: chores - other changes that don't modify src or test files ♻️"
    "revert: reverts - reverts a previous commit 🗑"
)

options=$(printf "%s\n" "${list[@]}")
selected_option=$(echo "$options" | fzf --prompt="select commit type: " --no-preview --header="Enter to paste OR m to continue with the message")

if [ -n "$selected_option" ]; then
    echo "$selected_option"
    commit_type=$(echo "$selected_option" | sed 's/: .*/:/' )
    read -p "Enter commit message: " commit_message

    if [ 'message' == "$MODE" ]; then
        tmux send-keys -t "$SESION:$WINDOW.$PANE" "$commit_type $commit_message"

    elif [ 'full' == "$MODE" ]; then
        tmux send-keys -t "$SESION:$WINDOW.$PANE" "git add . && git commit -m '$commit_type $commit_message' && git push"
    fi
else
    echo "no option selected."
fi





