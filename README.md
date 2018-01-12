# dotfiles

## Setup
```bash
git init --bare $HOME/.dotfiles
```

## Configuration
```bash
alias dofi='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dofi remote add origin git@github.com/markygriff/dotfiles.git
dofi config status.showUntrackedFiles no
```

## Usage
```bash
dofi status
dofi add .bashrc
dofi commit -m 'Add bashrc'
dofi push
```

## Replication
```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/markygriff/dotfiles.git dotfiles-tmp
rsync -rv --exclude '.git' dotfiles-tmp/ $HOME/
rm -r dotfiles-tmp
```
