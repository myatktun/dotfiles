if ! tmux has-session -t default; then
  tmux new -s default -d
  tmux split-window -t default:1 -h
  tmux send-keys -t default:1.1 nvim \ .tmux.conf Enter
  tmux send-keys -t default:1.2 nvim \ .config/tmux.sh Enter
  tmux rename-window -t default:1 tmux
  tmux new-window -t default:2
  tmux split-window -t default:2 -v
  tmux send-keys -t default:2.1 cd \ Projects/Python Enter nvim \ Main.py Enter
  tmux send-keys -t default:2.2 cd \ Projects/JavaScript Enter
  tmux rename-window -t default:2 dev
  # tmux select-window -t 1
fi
tmux new -d
tmux attach -t default
