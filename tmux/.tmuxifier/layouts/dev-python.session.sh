if initialize_session "python"; then
  new_window "Docker" || echo "Failed to create Docker window"
  run_cmd "cd $HOME" || echo "Failed to run cd $HOME"
  run_cmd "lzd" || echo "Failed to run lzd"

  new_window "Py" || echo "Failed to create python window"
  run_cmd "cd ~/Developer/WORKSPACE/Python" || echo "Failed to run cd py"


  new_window "Django" || echo "Failed to create Django window"
  run_cmd "cd ~/Developer/WORKSPACE/Python/DJANGO" || echo "Failed to run cd Django"

  new_window "React" || echo "Failed to create React window"
  run_cmd "cd ~/Developer/WORKSPACE/JS_TS/REACT" || echo "Failed to run cd React"

  # Optionally, select a window to be displayed first. 0 is the index of the first window.
  select_window 1 || echo "Failed to select window 1"
fi

# Finalize and switch/attach to the session
finalize_and_go_to_session || echo "Failed to finalize and go to session"
