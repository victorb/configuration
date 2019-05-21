source ~/antigen.zsh
antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme robbyrussell
antigen apply

export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/user/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/user/bin
export PATH=$PATH:/opt/yarn-v1.3.2/bin
export PATH=$PATH:/home/user/.gem/ruby/2.5.0/bin
export ERIO_PATH=/home/user/projects
export EDITOR=$(which nvim)
export VISUAL=$(which nvim)

export ANDROID_HOME=/home/user/Android/Sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME

function n() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

function erioc() {
  erio $@
  cd $(xsel -b)
}

function erioy() {
  erioc $@
  yarn install
}

#export PATH="${PATH}:/home/user/.nips/versions/current/bin"
export PATH="${PATH}:/home/user/.nvm/versions/node/v9.5.0/bin"
export PATH="${PATH}:/home/user/.yarn/bin"
export PATH="${PATH}:/home/user/.config/yarn/global/node_modules/.bin/"
# Makes commands print out their executable when enabled
# export TERM=screen-256color-bce

# Daring, always use tmux
# if command -v tmux>/dev/null; then
#   [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
# fi

# Initialize autojump
. /usr/share/autojump/autojump.zsh

# GIT BEGIN
alias pull='pull_from_upstream'
alias pull-rebase='pull_rebase_from_upstream'
alias p='pull_from_upstream'
alias pr='pull_rebase_from_upstream'

alias gp='git pull'
alias gpush='git push'
alias gc='git commit --verbose'
alias gca='gc --amend'
alias gch='git checkout'
alias gchb='git checkout -b'
alias ga='git add'
alias gaa='ga .'
alias gaau="gaa -u"
# alias gs='git rev-parse HEAD && echo && git status -v --long --show-stash'
alias gs='git status'
alias gcp='git cherry-pick'
alias gmt='git mergetool'
alias gl='git log'
alias glo='git log --oneline'
alias gd='git diff'
alias gdc='gd --cached'
alias glog='git log --graph --all --decorate --oneline'
alias gpush='git push $* $(branch):$branch'
alias gap='git add -p'
alias gb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)' | tac"
alias gmaster="gch master"
alias gstage="gch stage"
alias gproduction="gch production"
alias gtag="git for-each-ref --sort=taggerdate --format '%(refname) %(taggerdate)' refs/tags | sed 's/refs\/tags\///' | egrep --color=always '^[-_.[:alnum:]]+ '"
alias gpob="git push origin $branch"
alias gpub="git push upstream $branch"
alias git-aliases="awk ' /GIT BEGIN/ {flag=1;next} /GIT END/{flag=0} flag { print }' ~/.zshrc"
# GIT END

alias ns="jq .scripts package.json"
alias nd="jq .dependencies package.json"
alias ndd="jq .devDependencies package.json"

alias todo="nvim ~/docs/todo.md"

function branch() { #Function for getting current branch
  ref=$(git symbolic-ref HEAD)
  echo "${ref#refs/heads/}"
}

function htgrep() {
  cmd="cat ~/.zsh_history"
  things=($@)
  for one_thing in $things; do
    cmd="$cmd | grep -i $one_thing"
    # echo "grep-i $one_thing"
  done
  cmd="$cmd | cut -c 16-"
  zsh -ic "$cmd"
}

# most valuable alias of all aliases
alias :q=exit

setxkbmap -layout us
setxkbmap -option caps:escape

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
