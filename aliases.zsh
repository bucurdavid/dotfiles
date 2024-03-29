
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
alias gl="git pull --prune"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp="git push"
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias ga="git add ." 
alias gc="git commit"
alias gcm="git commit -m"
alias gco="git checkout"
alias gb="git branch"
alias gs='git status -sb'
alias gac="git add -A && git commit -m"
alias gp="git push"


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
alias ct="cargo test"
alias cb="cargo build"


#sol

alias sol="solana"
alias ab="anchor build"