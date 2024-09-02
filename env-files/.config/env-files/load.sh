# Load global environment variables
source ~/.config/env-files/env/global.env

# Load OS-specific configurations
if [[ "$OSTYPE" == "darwin"* ]]; then
    source ~/.config/env-files/env/macos.env
    source ~/.config/env-files/path/macos-path.env
else
    source ~/.config/env-files/env/linux.env
    source ~/.config/env-files/path/linux-path.env
fi

# Load shell functions
source ~/.config/env-files/functions/global-functions.sh
source ~/.config/env-files/functions/dev-functions.sh

# Load specific environment variables
source ~/.config/env-files/env/node.env

# Load PATH configurations
source ~/.config/env-files/path/global-path.env
source ~/.config/env-files/path/python-path.env
source ~/.config/env-files/path/node-path.env


# Load aliases
source ~/.config/env-files/aliases.env

# Finalization message
echo "All configurations have been loaded."
