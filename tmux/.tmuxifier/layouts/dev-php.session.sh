if initialize_session "Php"; then
  new_window "Docker" || echo "Failed to create Docker window"
  run_cmd "cd $HOME" || echo "Failed to run cd $HOME"
  run_cmd "lzd" || echo "Failed to run lzd"

  new_window "PHP" || echo "Failed to create PHP window"
  run_cmd "cd ~/Developer/WORKSPACE/PHP" || echo "Failed to run cd PHP"

  new_window "Laravel" || echo "Failed to create Laravel window"
  run_cmd "cd ~/Developer/WORKSPACE/PHP/LARAVEL" || echo "Failed to run cd Laravel"

  new_window "VueJS" || echo "Failed to create VueJS window"
  run_cmd "cd ~/Developer/WORKSPACE/JS_TS/VUEJS" || echo "Failed to run cd VueJS"

  # Optionally, select a window to be displayed first. 0 is the index of the first window.
  select_window 1 || echo "Failed to select window 1"
fi

# Finalize and switch/attach to the session
finalize_and_go_to_session || echo "Failed to finalize and go to session"
