# Generic
alias ftree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias svim="sudo -E vim"
function procload() {
	top -b -n 1 | awk '{if (NR <=7) print; else if ($8 == "D") {print; count++} } END {print "Total status D (I/O wait probably): "count}'
}
alias gnuplot='gnuplot -p'
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias tmof="lsof | awk '{ print $2 " " $1; }' | sort -rn | uniq -c | sort -rn | head -20"
alias ccat='pygmentize -g -O style=colorful,linenos=1'

# Easy hosts
alias hosts='sudo vim /etc/hosts'

# Docker
alias dl="docker ps -l -q"
alias dps="docker ps"
alias dpa="docker ps -a"
alias di="docker images"
dkp() { docker run -d -p $3:$3 --name $2 $1; }
alias dex="docker exec -i -t"
dstop() { docker stop $(docker ps -q); }
drm() { docker rm $(docker ps -a -q); }
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
dri() { docker rmi $(docker images -q); }
dbu() { docker build -t=$1 .; }
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }
dfw() { docker container logs -f $(docker ps -aqf "name=$1"); }
dtl() { docker container logs --tail 100 $(docker ps -aqf "name=$1"); }
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcb="docker-compose build"

# Contexts
alias kcc='kubectl config get-contexts'
alias kctx='kubectx'

# Core
alias k='kubectl'
alias kc='kubectl'
alias kube='kubectl'
alias kd='kubectl delete'
alias kds='kubectl describe service'
alias ke='kubectl edit'
alias kg='kubectl get'
alias kga='kubectl get --all-namespaces'
alias kl='kubectl logs'
alias kcl='kubectl logs'
alias klf='kubectl logs -f'
alias kra='krender; kapply'

# Cronjobs
alias kdsc='kubectl describe cronjobs'
alias kec='kubectl edit cronjobs'
alias kgc='kubectl get cronjobs'
alias kgcy='kubectl get cronjobs -o yaml'
alias kgac='get_cluster_resources cronjobs'

# Deployments
alias kdd='kubectl delete deployment'
alias kdsd='kubectl describe deployments'
alias ked='kubectl edit deployments'
alias kgd='kubectl get deployments'
alias kgdy='kubectl get deployments -o yaml'

# From file
alias kaf='kubectl apply -f'
alias kcf='kubectl create -f'
alias kdf='kubectl delete -f'
alias kef='kubectl edit -f'
alias kdsf='kubectl describe -f'
alias kgf='kubectl get -f'

# Ingress
alias kdi='kubectl delete ingress'
alias kgi='kubectl get ingress'
alias kei='kubectl edit ingress'
alias kgiy='kubectl get ingress -o yaml'
alias kdsi='kubectl describe ingress'
alias kgai='get_cluster_resources ingress'

# Jobs
alias kdj='kubectl delete job'
alias kdsj='kubectl describe jobs'
alias kej='kubectl edit jobs'
alias kgj='kubectl get jobs'
alias kgjy='kubectl get jobs -o yaml'
alias kgaj='get_cluster_resources jobs'

# Namespaces
alias kdns='kubectl delete namespaces'
alias kdsns='kubectl describe namespaces'
alias kens='kubectl edit namespaces'
alias kgns='kubectl get namespaces'
alias kgnsy='kubectl get namespaces -o yaml'
alias kns='kubens'

# Nodes
alias kdsn='kubectl describe nodes'
alias ken='kubectl edit nodes'
alias kgn='kubectl get nodes -o wide'
alias kgny='kubectl get nodes -o yaml'
alias ktn='kubectl top nodes'

# Pods
alias kdp='kubectl delete pod'
alias kdsp='kubectl describe pods'
alias kep='kubectl edit pods'
alias kgap='get_cluster_resources pods'
alias kgp='kubectl get pods'
alias kgpy='kubectl get pods -o yaml'
alias ktp='kubectl top pods'

# Services
alias kdss='kubectl describe services'
alias kes='kubectl edit services'
alias kgas='get_cluster_resources services'
alias kgs='kubectl get services'
alias kgsy='kubectl get services -o yaml'

# Mac-CLI https://github.com/guarinogabriel/mac-cli
alias tarc='f() { mac tar:compress $1 && rm -rf $1 };f'
alias tare='f() { mac tar:extract $1 };f'
alias gzc='f() { mac gzip:compress $1 && rm -f $1 };f'
alias gze='f() { mac gzip:extract $1 };f'

# Services
## NGinx
alias nginx.start='nginx'
alias nginx.stop='kill -QUIT $( cat /usr/local/var/run/nginx.pid )'
alias nginx.enable='brew services start nginx'
alias nginx.disable='brew services stop nginx'
alias nginx.restart='nginx.stop && nginx.start'
alias nginx.logs='ls -ltrh /usr/local/var/mysql/'

## Redis
alias redis.start='redis-server /usr/local/etc/redis.conf'
alias redis.stop="$(echo 'Sorry! Alias has not been configured yet.')"
alias redis.enable='brew services start redis'
alias redis.disable='brew services stop redis'
alias redis.restart='redis.stop && redis.start'
alias redis.logs="$(echo 'Sorry! Alias has not been configured yet.')"

## MongoDB
alias mongodb.start='mongod --config /usr/local/etc/mongod.conf'
alias mongodb.stop='mongo admin --eval "db.shutdownServer()"'
alias mongodb.enable='brew services start mongodb'
alias mongodb.disable='brew services stop mongodb'
alias mongodb.restart='mongodb.stop && mongodb.start'
alias mongodb.logs='ls -ltrh /usr/local/var/log/mongodb/'

## MariaDB
alias mysql.start='mysql.server start'
alias mysql.stop='mysql.server stop'
alias mysql.enable='brew services start mariadb'
alias mysql.disable='brew services stop mariadb'
alias mysql.restart='mysql.stop && mysql.start'
alias mysql.logs='ls -ltrh /usr/local/var/mysql/'

## PostgreSQL
alias pgsql.start='pg_ctl -l /usr/local/var/log/postgres.log -D /usr/local/var/postgres start'
alias pgsql.stop='pg_ctl -D /usr/local/var/postgres stop'
alias pgsql.enable='brew services start postgresql'
alias pgsql.disable='brew services stop postgresql'
alias pgsql.restart='pgsql.stop && pgsql.start'
alias pgsql.logs='ls -ltrh /usr/local/var/log/postgres.log'

## pgAdmin
alias pgadmin='open -a /Applications/pgAdmin\ 4.app'

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

# Often used folder shortcuts
alias drop='cd ~/Dropbox && ls -al'
alias pdi.file.dev='cd ~/Dropbox/pdi_file_repository/pentaho_pdi_repository_dev'
alias pdi.file.prod='cd ~/Dropbox/pdi_file_repository/pentaho_pdi_repository_prod'

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

# GNU coreutils
alias ls="gls -al --color=auto"
alias l='gls -al --color=auto'
alias ll='gls -altrh --color=auto'

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
alias brewup='brew update && brew upgrade && brew cask upgrade && brew cleanup -s'
alias npmup='npm cache verify && npm install -g npm'
alias sysup='sudo softwareupdate -i -a'
alias upall='sysup && brewup && npmup'

# imagemagick downsampling shortcuts
alias png25='find . -name "*.png" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 25% -colorspace sRGB'
alias jpg25='find . -name "*.jpg" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 25% -colorspace sRGB'
alias png50='find . -name "*.png" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 50% -colorspace sRGB'
alias jpg50='find . -name "*.jpg" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 50% -colorspace sRGB'

# NM
alias catchup-tunnel="ssh -p${NM_MGMT_PORT} ${NM_MGMT_USER}@${NM_MGMT_HOST} -L ${LOCAL_SSH_FORDWARD_PORT}:${NM_MGMt_CATCHUP_HOST}:${NM_MGMT_PORT} -N"
alias cmgmt="ssh -p ${NM_MGMT_PORT} ${NM_MGMT_USER}@${NM_MGMT_HOST}"
alias mmgmt="mkdir -p /tmp/${NM_MGMT_HOST}; sshfs -p ${NM_MGMT_PORT} ${NM_MGMT_USER}@${NM_MGMT_HOST}: /tmp/${NM_MGMT_HOST} -ocache=no -onolocalcaches -ovolname=${NM_MGMT_HOST}"
alias pbi="ssh -L 8080:${NM_PENTAHO_HOST}:8080 -p ${NM_MGMT_PORT} ${NM_MGMT_USER}@${NM_MGMT_HOST}"
alias sshf='f() { ssh -p${NM_MGMT_PORT} ${NM_MGMT_USER}@${NM_MGMT_HOST} -L $1 -N};f'

# Dev
alias dev="ssh -p${DEV_MGMT_PORT} ${DEV_MGMT_USER}@${DEV_MGMT_HOST}"
alias mdev="mkdir -p /tmp/dev; sshfs -p ${DEV_MGMT_PORT} ${DEV_MGMT_USER}@${DEV_MGMT_HOST}: /tmp/dev -ocache=no -onolocalcaches -ovolname=dev"

# Pentaho JNDI
alias switch_pentaho_dev="ln -vfs $HOME/.pentaho/simple-jndi/jndi-dev.properties $HOME/.pentaho/simple-jndi/jndi.properties"
alias switch_pentaho_prod="ln -vfs $HOME/.pentaho/simple-jndi/jndi-prod.properties $HOME/.pentaho/simple-jndi/jndi.properties"

# WDMC
alias wdmc="ssh -oHostKeyAlgorithms=+ssh-dss -p${WDMC_HOST_PORT} ${WDMC_HOST_USER}@${WDMC_HOST}"
