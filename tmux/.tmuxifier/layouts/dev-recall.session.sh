if initialize_session "A-recall"; then
  new_window "Docker-Term"
  run_cmd "cd $HOME"
  run_cmd "lzd"

  new_window "Nest-Recall"
  run_cmd "cd ~/Developer/WORKSPACE/JS_TS/NESTJS/sideproject/api-recall"
  run_cmd "nvim ."

  new_window "Vue-Recall"
  run_cmd "cd ~/Developer/WORKSPACE/JS_TS/VUEJS/vue-recall"
  run_cmd "nvim ."

  # Optionally, select a window to be displayed first. 0 is the index of the first window.
  select_window 1
fi

# Finalize and switch/attach to the session
finalize_and_go_to_session

