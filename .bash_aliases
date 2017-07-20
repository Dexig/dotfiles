#!/usr/bin/env bash

# Aliases
alias wd="cd ~/Documents"
alias wg="cd ~/Documents/GitHub"
alias wt="cd ~/Documents/Texts"
alias wg="cd ~/Documents/Playground"
alias gti="git $1"

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

# Git aliases
alias g='git'
alias ga='git add' && __git_complete ga _git_add
alias gc='git ci -m'
alias gs='git st'
alias go='git co' && __git_complete gc _git_checkout
alias gh='git hist'
alias gpf='git pull --ff-only'
alias gom='git co master'
alias grm='git rebase master'
alias gfu='git fixup'
alias gumc='gom && gpf && go - && grm'
