# Git
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git-completion.bash
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

# Propmt colors, formatting, spacing
export PS1='\n\[\033[36m\]tynan:\[\033[33;1m\]\w\[\033[m\]\[\033[0;37m\]$(__git_ps1 " (%s)")\[\e[0m\]$ '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# So I can always run `code` from the command line
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Increase the memory usage of Node globally to 4gb
export NODE_OPTIONS=--max_old_space_size=2048

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

# Ls
alias ls='ls -GFh'
alias lsa='ls -la'

# Bat
alias bat='bat --theme="Monokai Extended Light"'
alias batd='bat --theme="Monokai Extended Bright"'

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

# Python
export PATH=$PATH:~/Library/Python/2.7/bin

# Show PWD in terminal windows
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'

# Functions for increased efficiency
JOURNAL_DIR=~/Documents/journal
journal() {
  cd $JOURNAL_DIR
  git stash
  git pull
  git stash pop
  mkdir -p $JOURNAL_DIR/`date +%Y`
  code $JOURNAL_DIR/`date +%Y`/`date +%Y-%m-%d`.md
}
alias j=journal

push() {
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