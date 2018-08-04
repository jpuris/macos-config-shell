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
alias nginx.logs='ls -ltrh /usr/local/etc/nginx/logs/'

## MongoDB
alias mongodb.start='mongod --config /usr/local/etc/mongod.conf'
alias mongodb.stop='mongo admin --eval "db.shutdownServer()"'
alias mongodb.enable='brew services start mongodb'
alias mongodb.disable='brew services stop mongodb'
alias mongodb.restart='mongodb.stop && mongodb.start'
alias mongodb.logs='ls -ltrh /usr/local/var/log/mongodb/'

## MariaDB
alias mysql.start='mysql.server start'
alias mysql.stop='mysql.server start'
alias mysql.enable='brew services start mariadb'
alias mysql.disable='brew services stop mariadb'
alias mysql.restart='mysql.stop && mysql.start'
alias mysql.logs='ls -ltrh /usr/local/var/log/mariadb/'

## PostgreSQL
alias pgsql.start='pg_ctl -D /usr/local/var/postgres start'
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

# GNY coreutils
alias ls="gls -al --color=auto"
alias l='gls -al --color=auto'

# Git
alias g="git"
alias gf="git-flow"
alias gst="git status"
alias gpl='git pull origin $(current_branch)'
alias gps='git push origin $(current_branch)'
alias grm='git rm $(git ls-files --deleted)'
alias gmo='$EDITOR $(git ls-files -m)'
alias gba='git branch -u origin/$(current_branch)'

# tmux
alias t='tmux -u -2'
alias ta='tmux attach'

# brew
alias b='brew'
alias bpurge='brew cleanup && brew cleanup -s && brew services cleanup'
alias bcache='du -h /Users/${USER}/Library/Caches/homebrew | sort -h && echo "File count: $(ls -p /Users/${USER}/Library/Caches/homebrew/ | grep -v / | wc -l)"'

# All in one homebrew, update commands
alias brewup='brew update && brew upgrade && brew cask upgrade && brew cleanup -s'
alias npmup='npm -g cache clean && npm -g update && npm-check-updates -u && npm install'
alias sysup='sudo softwareupdate -i -a'
alias upall='sysup && brewup && npmup'

# imagemagick downsampling shortcuts (c&p retina folder, run, done!)
# http://www.imagemagick.org/Usage/filter/nicolas/#downsample
alias png25='find . -name "*.png" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 25% -colorspace sRGB'
alias jpg25='find . -name "*.jpg" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 25% -colorspace sRGB'
alias png50='find . -name "*.png" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 50% -colorspace sRGB'
alias jpg50='find . -name "*.jpg" | xargs mogrify -colorspace RGB -filter LanczosRadius -distort Resize 50% -colorspace sRGB'

# NM
alias catchup-tunnel="ssh -p${NM_MGMT_PORT} ${NM_MGMT_USER}@${NM_MGMT_HOST} -L ${LOCAL_SSH_FORDWARD_PORT}:${NM_MGMt_CATCHUP_HOST}:${NM_MGMT_PORT} -N"
alias cmgmt="ssh -p ${NM_MGMT_PORT} ${NM_MGMT_USER}@${NM_MGMT_HOST}"
alias mmgmt="mkdir -p /tmp/${NM_MGMT_HOST}; sshfs -p ${NM_MGMT_PORT} ${NM_MGMT_USER}@${NM_MGMT_HOST}: /tmp/${NM_MGMT_HOST} -ocache=no -onolocalcaches -ovolname=${NM_MGMT_HOST}"
alias pbi="ssh -L 8080:${NM_PENTAHO_HOST}:8080 -p ${NM_MGMT_PORT} ${NM_MGMT_USER}@${NM_MGMT_HOST}"
alias sshf="f() { ssh -p${NM_MGMT_PORT} ${NM_MGMT_USER}@${NM_MGMT_HOST} -L $1 -N};f"

# Dev
alias dev="ssh -p${DEV_MGMT_PORT} ${DEV_MGMT_USER}@${DEV_MGMT_HOST}"
alias mdev="mkdir -p /tmp/dev; sshfs -p ${DEV_MGMT_PORT} ${DEV_MGMT_USER}@${DEV_MGMT_HOST}: /tmp/dev -ocache=no -onolocalcaches -ovolname=dev"
