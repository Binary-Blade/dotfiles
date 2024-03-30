if initialize_session "Config"; then
  new_window "C-Vim"
  run_cmd "config && nvim ."

  new_window "C-Tmux"
  run_cmd "cd .config/tmux && nvim ."

  new_window "C-Tmuxifier"
  run_cmd "cd .config/tmux/.tmuxifier/layouts && nvim ."
  select_window 1
fi
finalize_and_go_to_session

