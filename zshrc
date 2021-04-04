# Path to your oh-my-zsh installation.
export ZSH="/Users/jp/.oh-my-zsh"

# History timestamps
HIST_STAMPS="yyyy-mm-dd"

# OH MY ZSH plugins
plugins=(
    iterm2
    zsh-autosuggestions
    kubectl
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
## SOURCE ALIASES
source ~/.shell_aliases.sh

## PATH
export PATH=/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/opt/X11/bin
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
export PATH="/usr/local/opt/ssh-copy-id/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
# END

# Locale fix
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# THEME
eval "$(starship init zsh)"

# HISTORY
setopt inc_append_history

# BAT
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

PATH="/Users/jp/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/jp/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/jp/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/jp/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/jp/perl5"; export PERL_MM_OPT;
