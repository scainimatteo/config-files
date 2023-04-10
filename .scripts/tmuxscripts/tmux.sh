tmux new -s SESSION -d
tmux split-window -h
tmux select-pane -t 0
tmux rename-window 'main'
tmux attach-session
