#!/usr/bin/env bash

# Aliases
alias wd="cd ~/Documents"
alias wg="cd ~/Documents/GitHub"
alias wt="cd ~/Documents/Texts"
alias ws="cd ~/Documents/Sandbox"
alias gti="git $1"

# Easier navigation: .., ... and ~
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

# LS flags
alias ls='ls -hFGA'
alias ll='ls -la'

# Always enable colored `grep` output
alias grep='grep --color=auto'

# Applications
alias site="open -a safari $1"

# System
alias lock='pmset displaysleepnow'
