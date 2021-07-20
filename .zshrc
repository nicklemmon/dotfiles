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
alias gitp="git push"
alias gitcp="git cherry-pick"
alias gitfail="git am --show-current-patch"
alias gitdiff="git diff --cached"

function gitc() {
  branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

  git commit -m "$branch - $1"
}

function gitpub() {
  branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

  git push --set-upstream origin $branch
}
