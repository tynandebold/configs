# Git
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git-completion.bash
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

# Propmt colors, formatting, spacing
export PS1='\n\[\033[36m\]\u:\[\033[33;1m\]\w\[\033[m\]\[\033[0;37m\]$(__git_ps1 " (%s)")\[\e[0m\]$ '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Aliases
# Ls
alias ls='ls -GFh'
alias lsa='ls -la'

# Bat
alias bat='bat --theme="Monokai Extended Light"'

# Weather and moon
alias weather='curl http://wttr.in/Copenhagen?uFn'
alias moon='curl http://wttr.in/Moon?F'

# Reload bash profile
alias rbash='source ~/.bash_profile'

# Web
alias sc="open -na 'Google Chrome' --args '--app=https://soundcloud.com/tynandebold/likes'"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Loads nvm bash_completion

# Set BASH history to unlimited lines
export HISTSIZE=
export HISTFILESIZE=

# Homebrew
export PATH=/usr/local/bin:$PATH

# Show PWD in terminal windows
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'

# Functions for increased efficiency
EDITOR=code
NOTES_DIR=~/Documents/journal
journal() {
  cd $NOTES_DIR
  git stash
  git pull
  git stash pop
  mkdir -p $NOTES_DIR/`date +%Y`
  $EDITOR $NOTES_DIR/`date +%Y`/`date +%Y-%m-%d`.md
}
alias j=journal

journalPush() {
  date=$(date)
  cd $NOTES_DIR
  if [[ $(git status -s) ]]; then
    git add .
    git commit -m "Journal updated: $date"
    git push
  fi
}
alias jp=journalPush

TODO_DIR=~/Documents/todo
todoPush() {
  date=$(date)
  cd $TODO_DIR
  if [[ $(git status -s) ]]; then
    git commit -am "Updated todos: $date"
    git push
  fi
}
alias tdp=todoPush