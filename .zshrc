# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/Marky/.oh-my-zsh


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="mh"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew npm)

source $ZSH/oh-my-zsh.sh

## User configuration

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Aliases
alias zshupdate=". ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="ls -G"
alias dofi='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias neofetch="neofetch"
alias lab='/usr/bin/expect ~/.scripts/lab_login'
alias spotify='/Applications/Spotify.app/Contents/MacOS/Spotify'

## Auto Committer
# nohup ${HOME}/.scripts/committer/comm &> /dev/null
export PATH=$PATH:${HOME}/.scripts/neofetch

# pywal stuff
# export WAL_DIR=/Users/Marky/.scripts/pywalMac/pywal
# alias wal="wal -o ~/.scripts/set_color"
# reload wal
# wal -i $(cat ~/.cache/wal/wal) &>/dev/null
# wal -o ~/.scripts/set_color
# source colors used by wal
# source "${HOME}/.cache/wal/colors.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## Sources
source ~/.scripts/rover.sh
