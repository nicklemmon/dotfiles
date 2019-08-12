export ZSH=<path-to-.oh-my-zsh>

ZSH_THEME="refined"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Startup
cd dev

# Aliases
alias gits="git status"
alias gita="git add ."
alias gitc="git commit -m"
alias gitp="git push"
