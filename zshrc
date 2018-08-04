fpath=(/usr/local/share/zsh-completions $fpath)
# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh

plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration

## SOURCE ALIASES
source ~/.env_vars.sh
source ~/.shell_aliases.sh

## PATH
export PATH=/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/opt/X11/bin
export PATH=${PATH}:/Users/${USER}/Library/Android/sdk/platform-tools
export PATH=${PATH}:/Applications/tools/percona/bin
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$PATH:/Applications/mongodb"
export PATH="/usr/local/opt/mongodb@3.2/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
# END

# Locale fix
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

autoload -U promptinit; promptinit
prompt pure

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Pyenv
export PATH="/User/jp/.pyenv:$PATH"
eval "$(pyenv init -)"
