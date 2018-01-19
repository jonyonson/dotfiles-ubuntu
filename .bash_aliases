# ~/.bash_aliases for Ubuntu
# ===============================

# Easier navigation: .. & ...
alias ..="cd .."
alias ...="cd ../.."

# Since I'm always accidentally doing it
alias :x="exit"
alias ZZ="exit"

# mv, rm, cp
alias mv="mv -v"
alias rm="\rm -v -i"
alias cp="cp -v"


# use coreutils 'ls' | brew install coreutils
hash gls >/dev/null 2>&1 || alias gls="ls"

# List directory contents
if gls --color > /dev/null 2>&1; then colorflag="--color"; else colorflag="-G"; fi;

alias ls='gls -N ${colorflag}'
alias lsd='ls -l | grep "^d"'    # only directories
alias ll='ls -oh ${colorflag}'   # long format (without group id)
alias l.='ls -A ${colorflag}'    # Show hidden files
alias ll.='ls -Aho ${colorflag}' # Show hidden files in long format

# ssh
alias copy_ssh='pbcopy < ~/.ssh/id_rsa.pub'

# Git
alias g="git"
alias push="git push"
alias undopush="git push -f origin HEAD^:master" # undo a `git push`

# Vim
alias v="vim"
alias rmswap="find $HOME/.vim/swaps -name '*.sw[a-z]' | xargs rm" # remove vim swap files

# npm
alias npm.leaves="npm ls --depth=0 -g"
