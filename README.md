# JP's ZSH environment config
## Installation
### Backup current config
```
mkdir ~/origin_shell_config
test -e ~/.shell_aliases && mv ~/.shell_aliases ~/origin_shell_config/
test -e ~/.zshrc && mv ~/.zshrc ~/origin_shell_config/
test -e ~/.env_vars && mv ~/.env_vars ~/origin_shell_config/
```
### Clone repo
```
git clone git@gitlab.com:janis.puris/shell-config.git
cd .shell-config
```
### Set up the symlinks to new config
```
ln -s .shell-config ~/.shell-config
ln -s .zshrc ~/.zshrc
touch ~/.env_vars
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