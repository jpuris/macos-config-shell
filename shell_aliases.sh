# Generic
alias ftree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias svim="sudo -E vim"
alias gnuplot='gnuplot -p'
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias ccat='pygmentize -g -O style=colorful,linenos=1'
alias rdon="diskutil partitionDisk $(hdiutil attach -nomount ram://8388608) 1 GPTFormat APFS 'ramdisk' '100%'"
alias rdoff="diskutil eject /volumes/ramdisk"

# LSD
alias ls='lsd -ltr'
alias ll='lsd -ltr'
alias l='lsd -ltr'

# Easy hosts
alias hosts='sudo vim /etc/hosts'

# Jupyter
alias jn='jupyter notebook'

# Python virtualenv
alias activate="source venv/bin/activate"

# Docker
alias dl="docker ps -l -q"
alias dps="docker ps"
alias dpa="docker ps -a"
alias di="docker images"
dkp() { docker run -d -p $3:$3 --name $2 $1; }
alias dex="docker exec -i -t"
dstop() { docker stop $(docker ps -q); }
dstart() { docker start $1; }
alias drm="docker rm"
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
dri() { docker rmi $(docker images -q); }
dbu() { docker build -t=$1 .; }
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }
dfw() { docker container logs -f $(docker ps -aqf "name=$1"); }
dtl() { docker container logs --tail 100 $(docker ps -aqf "name=$1"); }

# Docker compose
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcb="docker-compose build"
alias dcl="docker-compose logs -f -t"

# kubectl
alias k="kubectl"

# terraform
alias tf="terraform"

# k9s
alias k9s="k9s --readonly"
alias kns="k9s --readonly"
alias k9sw="k9s"
alias knsw="k9s"

# istio
alias i='istioctl'
alias ig='istioctl get'
alias ic='istioctl create -f'
alias ir='istioctl replace -f'
alias idl='istioctl delete'
alias iij='istioctl kube-inject -f'

# Mac-CLI https://github.com/guarinogabriel/mac-cli
alias tarc='f() { mac tar:compress $1 && rm -rf $1 };f'
alias tare='f() { mac tar:extract $1 };f'
alias gzc='f() { mac gzip:compress $1 && rm -f $1 };f'
alias gze='f() { mac gzip:extract $1 };f'

## Other
alias osq='/usr/local/bin/osqueryi'

# Apps
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# Easier navigation: .., ..., ~ and -
alias ~="cd ~"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# System && random usefull stuff
alias e='exit'
alias md='mkdir -p'
alias rd='rmdir'
alias d='dirs -v | head -10'
alias cl='clear'
alias kdf='killall -kill Finder | killall -kill Dock'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias flushdns='sudo killall -HUP mDNSResponder'
alias sudo='sudo '
alias ws='wireshell'

# Git
alias g='git'
alias gcl='git clone'
alias gpl='git pull origin $(current_branch)'
alias gps='git push origin $(current_branch)'
alias ga='git add'
alias grm='git rm'
alias gmv='git mv'
alias gap='git add -p'
alias gall='git add -A'
alias gf='git fetch --all --prune'
alias gus='git reset HEAD'
alias gpristine='git reset --hard && git clean -dfx'
alias gclean='git clean -fd'
alias gm="git merge"
alias gs='git status'
alias gss='git status -s'
alias gr='git remote'
alias gd='git diff'
alias gc='git commit -v'
alias gcm='git commit -v -m'
alias gb='git branch'
alias gco='git checkout'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"
alias ggs="gg --stat"
alias gsl="git shortlog -sn"
alias gwc="git whatchanged"
alias gt="git tag"
alias gta="git tag -a"
alias gtd="git tag -d"
alias gtl="git tag -l"
## Show commits since last pull
alias gnew="git log HEAD@{1}..HEAD@{0}"
## Add uncommitted and unstaged changes to the last commit
alias gcaa="git commit -a --amend -C HEAD"
alias gcsam="git commit -S -am"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gh='cd "$(git rev-parse --show-toplevel)"'
alias gtls="git tag -l | gsort -V"

# brew
alias b='brew'
alias bpurge='brew cleanup && brew cleanup -s && brew services cleanup'
alias bcache='du -h /Users/${USER}/Library/Caches/homebrew | sort -h && echo "File count: $(ls -p /Users/${USER}/Library/Caches/homebrew/ | grep -v / | wc -l)"'

# All in one homebrew, update commands
alias brewup='brew update && brew upgrade && brew upgrade --cask && brew cleanup -s'
alias npmup='npm cache verify && npm install -g npm && npm install -g'
alias sysup='sudo softwareupdate -i -a'
alias upall='sysup && brewup && npmup'

# imagemagick downsampling shortcuts
alias png25='find . -name "*.png" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 25% -colorspace sRGB'
alias jpg25='find . -name "*.jpg" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 25% -colorspace sRGB'
alias png50='find . -name "*.png" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 50% -colorspace sRGB'
alias jpg50='find . -name "*.jpg" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 50% -colorspace sRGB'

# Other stuff
alias myip="curl checkip.amazonaws.com"
