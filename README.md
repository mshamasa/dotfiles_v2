# dotfiles

## Setup

### Prerequisites
- Command Line Tools for Xcode
```sh
xcode-select --install
```

## Installation
- clone repo
- copy content
```sh
cp -rf dotfiles/ .
```

- install brew, oh-my-zsh, antigen
```sh
bash ./dotfiles/.config/main.sh
```

4. install via brew
```sh
brew install --file dotfiles/.config/brew/.Brewfile
```

5. install nvim plugins
```
cd .config/nvim
nvim
:PlugInstall
```
