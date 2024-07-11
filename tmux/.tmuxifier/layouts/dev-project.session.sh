if initialize_session "NewProject"; then
  new_window "Docker"
  run_cmd "cd $HOME"
  run_cmd "lzd"

  new_window "NestJs"
  run_cmd "cd ~/Developer/WORKSPACE/JS_TS/NESTJS/sideproject && git clone https://github.com/Binary-Blade/starter-nestjs.git && cd starter-nestjs && pnpm install && nvim ."

  new_window "VueJS"
  run_cmd "cd ~/Developer/WORKSPACE/JS_TS/VUEJS && pnpm create vue@latest"

  # Optionally, select a window to be displayed first. 0 is the index of the first window.
  select_window 1
fi

# Finalize and switch/attach to the session
finalize_and_go_to_session

