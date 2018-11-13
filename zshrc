fpath=(/usr/local/share/zsh-completions $fpath)
# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh

plugins=(git zsh-syntax-highlighting kubectl)
source $ZSH/oh-my-zsh.sh

# User configuration

## SOURCE ALIASES
source ~/.env_vars.sh
source ~/.shell_aliases.sh
source ~/.shell_aliases_work.sh

## PATH
export PATH=/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/opt/X11/bin
export PATH=${PATH}:/Users/${USER}/Library/Android/sdk/platform-tools
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

autoload -U promptinit; promptinit
prompt pure

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Pyenv
export PATH="/User/jp/.pyenv:$PATH"
eval "$(pyenv init -)"

PATH="/Users/jp/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/jp/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/jp/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/jp/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/jp/perl5"; export PERL_MM_OPT;
