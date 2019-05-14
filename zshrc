fpath=(/usr/local/share/zsh-completions $fpath)
# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh

plugins=(git zsh-syntax-highlighting kubectl)
source $ZSH/oh-my-zsh.sh

# User configuration

## SOURCE ALIASES
source ~/.shell_aliases.sh
source ~/.shell_aliases_work.sh

## PATH
export PATH=/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/opt/X11/bin
export PATH=${PATH}:/Applications/tools/percona/bin
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$PATH:/Applications/mongodb"
export PATH="/usr/local/opt/mongodb@3.2/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
## GO
export PATH=$PATH:/usr/local/opt/go/libexec/bin
# END

# Locale fix
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# iTerm2 ZSH shell integrations
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Pyenv
export PATH="/User/jp/.pyenv:$PATH"
eval "$(pyenv init -)"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jp/apps/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jp/apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jp/apps/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jp/apps/google-cloud-sdk/completion.zsh.inc'; fi
source <(kubectl completion zsh)
export PATH="/usr/local/opt/mysql@5.5/bin:$PATH"

# Theme
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
source ~/.oh-my-zsh/custom/themes/.purepower