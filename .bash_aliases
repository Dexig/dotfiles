#!/usr/bin/env bash

# Aliases
alias wd="cd ~/Documents"
alias wg="cd ~/Documents/GitHub"
alias wt="cd ~/Documents/Texts"
alias wg="cd ~/Documents/Playground"

alias sbt="ssh -R 9000:localhost:3000 -N sb -v"

# Easier navigation: .., ...
alias ..="cd .."
alias ...="cd ../.."

# LS flags
alias ls='ls -hFGA'
alias ll='ls -la'

# Always enable colored `grep` output
alias grep='grep --color=auto'

# System
alias lock='pmset displaysleepnow'
alias дщсл='pmset displaysleepnow'

# npm i -g change-branch - cli tool for change branch in interactive mode
alias cb='change-branch'

alias hb='hub browse'

# update serp-ci
alias sci='rm -rf node_modules/serp-ci && npm i'

# Git aliases
alias gti="git $1"
alias g='git'
alias ga='git add' && __git_complete ga _git_add
alias gc='git ci -m'
alias gs='git st'
alias go='git co' && __git_complete go _git_checkout
alias gh='git hist'
alias gch='git cherry' && __git_complete gr _git_cherry
alias gcl='git clone'
alias gob='git cob' && __git_complete gob _git_checkout
alias gpf='git pull --ff-only'
alias gom='git co master'
alias gca='git amend'
alias gbu='git branch -vv'
alias gvr='git remotes'

# reset staged area and wc
alias grHH='git reset --hard HEAD && git clean -f'
# Cancel staged changes
alias grH='git reset HEAD'
# Undo last commit ->  all changes in commit would be transfer to staged area
alias grHC='git reset HEAD~1 --soft'

alias gbD='git branch -D' && __git_complete gbD _git_branch

alias gss='git stash' && __git_complete gsa _git_stash
alias gsp='git stash pop'

function gri () {
  git rebase -i HEAD~$1 --ignore-date
}

alias grm='git rebase master'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias grs='git rebase --skip'

# Get current branch
alias gbc='git rev-parse --abbrev-ref HEAD'
# Updates master and then rebases current branch
alias gumc='gom && gpf && go - && grm'
# Push current branch and setup upstream
alias gpc='git push -u origin `gbc`'
# Force push current branch
alias gpcf='git push -u origin +`gbc`'

alias gfu='git fetch upstream'
alias grud='git rebase upstream/dev'
alias guf='gfu && grud'

function gril () {
  gumc
  cherry_commits=`git cherry master | wc -l | sed -e 's/^[ \t]*//'`

  echo HEAD~$cherry_commits

  git rebase -i HEAD~$cherry_commits --ignore-date
}
