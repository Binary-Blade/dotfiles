if initialize_session "Php"; then
  new_window "Docker"
  run_cmd "cd $HOME"
  run_cmd "lzd"

  new_window "PHP"
  run_cmd "cd ~/Developer/WORKSPACE/PHP"

  new_window "Laravel"
  run_cmd "cd ~/Developer/WORKSPACE/PHP/LARAVEL"

  new_window "VueJS"
  run_cmd "cd ~/Developer/WORKSPACE/JS_TS/VUEJS"

  # Optionally, select a window to be displayed first. 0 is the index of the first window.
  select_window 1
fi

# Finalize and switch/attach to the session
finalize_and_go_to_session

