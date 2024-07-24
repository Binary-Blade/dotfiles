# ZSH - Environment Configuration
# Author: Binary-Blade VH

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
plugins=(git fzf fzf-zsh-plugin zsh-syntax-highlighting zsh-autosuggestions)

# Starship Prompt
eval "$(starship init zsh)"

# Execute neofetch on new terminal launch
if command -v neofetch > /dev/null; then
  neofetch
fi
# Initialize Oh My Zsh
source $HOME/.oh-my-zsh/oh-my-zsh.sh
