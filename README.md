# dotfiles

## Setup

### Prerequisites
- Command Line Tools for Xcode
```sh
xcode-select --install
```

- Homebrew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- Antigen
```sh
curl -L git.io/antigen > antigen.zsh
```

- Stuff
```sh
brew install neovim
brew install yadm
```

## Finally
- clone repo via yadm

- install nvim plugins
```sh
cd .config/nvim
nvim
:PlugInstall
```
