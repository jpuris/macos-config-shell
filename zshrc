# Path to your oh-my-zsh installation.
export ZSH="/Users/jp/.oh-my-zsh"

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
export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.9/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
# END

# pyenv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# User configuration
## SOURCE ALIASES
source ~/.shell_aliases.sh

# Locale fix
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# EDITOR
export EDITOR="/opt/homebrew/bin/code"

# THEME
eval "$(starship init zsh)"

# HISTORY
setopt inc_append_history

export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/jp/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

cd ~
