# Initialisation de Cargo si le fichier env existe
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"


if [[ "$OSTYPE" == "darwin"* ]]; then
  # Homebrew initialization
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Initialisation NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Initialize Pyenv
if command -v pyenv >/dev/null; then
    eval "$(pyenv init --path)"
    eval "$(pyenv virtualenv-init -)"
fi

