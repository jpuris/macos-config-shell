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
export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.9/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.11/bin:$PATH"
# END

# pyenv
export PATH="$HOME/.local/bin:$PATH"

PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pyenv auto-activate
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

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
HEROKU_AC_ZSH_SETUP_PATH=$HOME/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# >>> conda initialize >>>
if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
    . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
else
    export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
fi
# <<< conda initialize <<<export
