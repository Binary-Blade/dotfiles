if initialize_session "NewSchool"; then
  new_window "Docker"
  run_cmd "cd $HOME"
  run_cmd "lzd"

  new_window "Server"
  run_cmd "cd ~/Developer/WORKSPACE/SIDEPROJECT && git clone https://github.com/Binary-Blade/starter-nestjs.git && cd starter-nestjs && pnpm install && nvim ."

  new_window "Client"
  run_cmd "cd ~/Developer/WORKSPACE/SIDEPROJECT && pnpm create vue@latest"

  # Optionally, select a window to be displayed first. 0 is the index of the first window.
  select_window 1
fi

# Finalize and switch/attach to the session
finalize_and_go_to_session

