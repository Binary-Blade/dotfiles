# Initialisation de Cargo si le fichier env existe
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# Initialisation NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


# Initialisation Pyenv
if command -v pyenv >/dev/null; then
    eval "$(pyenv init --path)"
    eval "$(pyenv virtualenv-init -)"
fi
