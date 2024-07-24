# ZSH - Environment Configuration
# Author: Binary-Blade VH

# Oh My Zsh Configuration
export ZSH="$HOME/.config/.oh-my-zsh"

# ENV Variables
source ~/.config/envman/load.sh

# fzf Configuration
if [ -f "$HOME/.fzf/shell/completion.zsh" ]; then
  source "$HOME/.fzf/shell/completion.zsh"
fi

if [ -f "$HOME/.fzf/shell/key-bindings.zsh" ]; then
  source "$HOME/.fzf/shell/key-bindings.zsh"
fi

# Plugins
plugins=(git fzf fzf-zsh-plugin zsh-autosuggestions)

# Starship Prompt
eval "$(starship init zsh)"

# Execute neofetch on new terminal launch
if command -v neofetch > /dev/null; then
  neofetch
fi
# Initialize Oh My Zsh
source $ZSH/oh-my-zsh.sh
