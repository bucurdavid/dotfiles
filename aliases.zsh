
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."


alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dc="cd ~/Documents"

# default dev folder
alias dev="cd ~/dev"

#solana dev
alias sol-dev="cd ~/dev/sol"


#git 
alias l="git pull --prune"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias a="git add ." 
alias c="git commit"
alias ap="git add -p"
alias cm="git commit -m"
alias m="git merge"
alias co="git checkout"
alias cob="git checkout -b"
alias s='git status -sb'
alias acm="git add -A && git commit -m"
alias p="git push"
alias pf="git push --force"
alias st="git stash"
alias stp="git stash pop"


#docker
alias dcu="docker-compose up"
alias dcd="docker-compose down"


#npm

alias ni="npm install"
alias ns="npm run start"
alias nt="npm run test"
alias nb="npm run build"


#mvx

alias scb="sc-meta all build"
alias scp="sc-meta all proxy"
alias scbp="sc-meta all build && sc-meta all proxy"
alias ct="cargo test"
alias cb="cargo build"


#sol

alias sol="solana"
alias ab="anchor build"
alias ai="anchor init"
alias ad="anchor deploy"

