# JP's ZSH environment config
## Installation
### Backup current config
```
mkdir ${HOME}/origin_shell_config
test -e ${HOME}/.shell_aliases.sh && mv ${HOME}/.shell_aliases.sh ${HOME}/origin_shell_config/
test -e ${HOME}/.zshrc && mv ${HOME}/.zshrc ${HOME}/origin_shell_config/
test -e ${HOME}/.env_vars.sh && mv ${HOME}/.env_vars.sh ${HOME}/origin_shell_config/
```
### Clone repo
```
git clone git@gitlab.com:janis.puris/shell-config.git
cd .shell-config
```
### Set up the symlinks to new config
```
ln -s $(pwd)/.shell_aliases.sh ${HOME}/.shell_aliases.sh
ln -s $(pwd)/.zshrc ${HOME}/.zshrc
touch ${HOME}/.env_vars.sh
```
## Dependencies
### Mandatory
- ZSH
- Oh My ZSH
- npm
- pyenv

### Optional
- homebrew
- ...

## Known issues
- Some things may show errors, if you have not installed all the dependencies
- Some aliases depends on environmental variables that need to be set in .env_vars
