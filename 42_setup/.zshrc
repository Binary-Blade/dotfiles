# Editor Configuration
export EDITOR='nvim'

# fzf Configuration
if [ -f "$HOME/.fzf/shell/completion.zsh" ]; then
  source "$HOME/.fzf/shell/completion.zsh"
fi

if [ -f "$HOME/.fzf/shell/key-bindings.zsh" ]; then
  source "$HOME/.fzf/shell/key-bindings.zsh"
fi

# Plugins
plugins=(git fzf fzf-zsh-plugin zsh-syntax-highlighting zsh-autosuggestions)

# Set Locale to UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Global Environment Variables

# Add user-installed binaries (avoid system paths)
export PATH="$HOME/.local/bin:$PATH"

# Pyenv commands (if you have Pyenv installed in your home directory)
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"

# Cargo (Rust) commands
export PATH="$HOME/.cargo/bin:$PATH"

# fzf commands
export PATH="$HOME/.fzf/bin:$PATH"

# Alias configurations (without envman)
alias config='cd ~/.config/nvim/lua && nvim .'
alias c-fier='cd ~/.tmux/.tmuxifier/layouts/ && nvim .'

# Git aliases
alias lzg='lazygit'

# NeoVim aliases
alias nvim='NVIM_APPNAME="binaryvim" nvim'

# Terminal aliases
alias zshrc='nvim ~/.zshrc'


# Starship Prompt
eval "$(starship init zsh)"

# Execute neofetch on new terminal launch
if command -v neofetch > /dev/null; then
  neofetch
fi

# Initialize Oh My Zsh
source $HOME/.oh-my-zsh/oh-my-zsh.sh
