#!/bin/zsh

# Update the title in terminal with the PWD
precmd() {
  echo -ne "\e]1;$PWD\a"
}

# Aliases
# Git
alias g.='git checkout .'
alias ga='git add .'
alias gc='git commit'
alias gcam='git commit -am'
alias gl='git log'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias glg='git log --graph --oneline --decorate --all'
alias gp='git pull'
alias gs='git status'
alias gsync='git pull --rebase && git push'
alias stash='git stash'
alias pop='git stash pop'
alias uncommit='git reset --soft HEAD^'

# Ls
alias ls='ls -GFh'
alias lsa='ls -la'

# history
alias history="history 1"

# Bat
alias bat='bat --theme="Monokai Extended Light"'
alias batd='bat --theme="Monokai Extended Bright"'

# Weather and moon
alias wthr='curl "http://wttr.in/Copenhagen?uFn"'
alias moon='curl "http://wttr.in/Moon?F"'

# Reload bash profile
alias rbash='source ~/.bash_profile'
alias rzsh='source ~/.zshrc'

# Web
alias sc="open -na 'Google Chrome' --args '--app=https://soundcloud.com/tynandebold/likes'"

# Functions for increased efficiency
JOURNAL_DIR=~/Documents/journal
journal() {
  cd $JOURNAL_DIR
  git stash
  git pull
  git stash pop
  mkdir -p $JOURNAL_DIR/$(date +%Y)
  code $JOURNAL_DIR/$(date +%Y)/$(date +%Y-%m-%d).md
}
alias j=journal

jpush() {
  date=$(date)
  if [[ "$1" = "todo" ]]; then
    cd ~/Documents/todo
    if [[ $(git status -s) ]]; then
      git commit -am "Updated todos: $date"
      git push
    fi
  else
    cd $JOURNAL_DIR
    if [[ $(git status -s) ]]; then
      git add .
      git commit -m "Updated journal: $date"
      git push
    fi
  fi
}

push() {
  branch=$(git rev-parse --abbrev-ref HEAD)
  if [[ $branch ]]; then
    git push origin $branch
  fi
}

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Z
. ~/Bin/z.sh

# Starship
eval "$(starship init zsh)"

# Set custom history size
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTFILE=~/.zsh_history

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
