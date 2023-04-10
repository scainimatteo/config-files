tmux new -s SESSION -d
tmux rename-window 'code'
tmux send-keys 'nvim .' C-m
tmux new-window
tmux rename-window -t 1 'terminal'
tmux select-window -t 0
tmux attach-session
