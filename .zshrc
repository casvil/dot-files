# Aliases

# Locations
alias zshconfig="code ~/.zshrc"
alias repos="cd ~/Repos"
alias timing="cd ~/Repos/timing-data"

# Git
alias grm="git rebase master"
alias grc="git rebase --continue"
alias grsk="git rebase --skip"
alias gra="git rebase --abort"
alias gs="git stash"
alias gsp="git stash pop"
alias grs="git reset --soft HEAD~1"
alias grh="git reset --hard"
alias wip="git add . && git commit -m 'wip' --no-verify"
alias gccl="git add . && gcmsg 'Update Changelog'"

# Meteor
alias my="meteor yarn"
alias mys="meteor yarn start"
alias myt="meteor yarn test"
alias mysb="meteor yarn storybook"
alias mytw="meteor yarn test:watch"

# Yarn
alias y="yarn"
alias ys="yarn start"
alias yd="yarn dist"
alias yt="yarn test"
alias ysb="yarn storybook"
alias ytw="yarn test:watch"

# Load NVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  

# NVM autoload
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrcexport PATH=/Users/davidcasanellas/.meteor:$PATH
