# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# History timestamps
HIST_STAMPS="yyyy-mm-dd"

# OH MY ZSH plugins
plugins=(
    iterm2
    zsh-syntax-highlighting
    zsh-autosuggestions
    docker
    docker-compose
    kubectl
    kubectx
)

source $ZSH/oh-my-zsh.sh

## PATH
export PATH="/Applications/SnowSQL.app/Contents/MacOS:$PATH"
export PATH="/usr/local/opt/go/libexec/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/ssh-copy-id/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/bin/:$PATH"
export PATH="/opt/X11/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.11/bin:$PATH"

# PostrgeSQL
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# OpenSSL
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib -L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include -I/opt/homebrew/opt/libpq/include"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# User configuration
## SOURCE ALIASES
source ~/.shell_aliases.sh
source ~/.shell_aliases_private.sh

# Locale fix
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# EDITOR
export EDITOR="/opt/homebrew/bin/code"

# THEME
eval "$(starship init zsh)"

# HISTORY
setopt inc_append_history

