if initialize_session "Typescript"; then
  new_window "Docker" || echo "Failed to create Docker window"
  run_cmd "cd $HOME" || echo "Failed to run cd $HOME"
  run_cmd "lzd" || echo "Failed to run lzd"

  new_window "NestJs" || echo "Failed to create NestJs window"
  run_cmd "cd ~/Developer/WORKSPACE/JS_TS/NESTJS/sideproject" || echo "Failed to run cd NestJs directory"
  run_cmd "git clone https://github.com/Binary-Blade/starter-nestjs.git" || echo "Failed to clone repository"
  run_cmd "nvim ." || echo "Failed to run nvim"

  new_window "VueJS" || echo "Failed to create VueJS window"
  run_cmd "cd ~/Developer/WORKSPACE/JS_TS/VUEJS" || echo "Failed to run cd VueJS directory"

  # Optionally, select a window to be displayed first. 0 is the index of the first window.
  select_window 1 || echo "Failed to select window 1"
fi

# Finalize and switch/attach to the session
finalize_and_go_to_session || echo "Failed to finalize and go to session"
