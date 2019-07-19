export VISUAL="nvim"
export EDITOR="nvim"
export PAGER="less"
export CLICOLOR=1
export PATH="$HOME/.cargo/bin:$PATH"

PS1=""

#
# Common
#
alias d="pwd"
alias h="history 25"
alias j="jobs -l"
alias l="ls -h"
alias la="ls -FA"
alias ll="ls -lAF"
alias o=$EDITOR
alias n="nnn -l"
alias vic="o ~/.config/nvim/init.vim"
alias cu="cd ../"
alias ca="cd -"
alias sb="source $HOME/.bashrc"

#
# Git
#
alias g="git remote -v | awk '{ print \$1 \" \" \$2 }' | uniq && git status -sb"		
alias ga="git add"
alias gaa="git add --all"
alias gba="git branch -a | grep -v -e '*' -e 'HEAD' | awk '{ print \$1 }'"
alias gc="git commit"
alias gca="git commit --all"
alias gcam="git commit -am"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcf="git checkout --force"
alias gd="git diff"
alias gff="git fetch --all"
alias gl="git pull"
alias gp="git push"
alias gpp="git push --force"
alias gpu="git push --set-upstream"
alias grm="git rebase origin/master"

#
# Completion
#
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source /usr/local/share/git-core/contrib/completion/git-completion.bash
