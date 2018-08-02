# JP's ZSH environment config
## Installation
### Backup current config
```
mkdir ${HOME}/origin_shell_config
test -e ${HOME}/.shell_aliases && mv ${HOME}/.shell_aliases ${HOME}/origin_shell_config/
test -e ${HOME}/.zshrc && mv ${HOME}/.zshrc ${HOME}/origin_shell_config/
test -e ${HOME}/.env_vars && mv ${HOME}/.env_vars ${HOME}/origin_shell_config/
```
### Clone repo
```
git clone git@gitlab.com:janis.puris/shell-config.git
cd .shell-config
```
### Set up the symlinks to new config
```
ln -s $(pwd)/.shell_aliases ${HOME}/.shell_aliases
ln -s $(pwd)/.zshrc ${HOME}/.zshrc
touch ${HOME}/.env_vars
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