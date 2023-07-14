# JP's ZSH environment config

## Installation

### Backup current config

```sh
mkdir ${HOME}/origin_shell_config
test -e ${HOME}/.shell_aliases.sh && mv ${HOME}/.shell_aliases.sh ${HOME}/origin_shell_config/
test -e ${HOME}/.zshrc && mv ${HOME}/.zshrc ${HOME}/origin_shell_config/
test -e ${HOME}/.env_vars.sh && mv ${HOME}/.env_vars.sh ${HOME}/origin_shell_config/
test -e ${HOME}/.config/starship.toml && mv ${HOME}/.config/starship.toml ${HOME}/origin_shell_config/
```

### Clone repo

```sh
git clone git@github.com:jpuris/macos-config-shell.git .macos-config-shell
cd .macos-config-shell
```

### Set up the symlinks to new config

```sh
ln -s $(pwd)/shell_aliases.sh ${HOME}/.shell_aliases.sh
ln -s $(pwd)/zshrc ${HOME}/.zshrc
mkdir -p ${HOME}/.config
ln -s $(pwd)/starship.toml ${HOME}/.config/starship.toml
touch ${HOME}/.env_vars.sh
```

## Dependencies

### Mandatory

- ZSH
- Oh My ZSH
- npm
- pyenv
- [starship](https://starship.rs)

### Optional

- homebrew
- ...

## Known issues

- Some things may show errors, if you have not installed all the dependencies
- Some aliases depends on environmental variables that need to be set in .env_vars
