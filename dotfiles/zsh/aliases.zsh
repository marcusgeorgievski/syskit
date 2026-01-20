#!/usr/bin/env zsh

# Navigation
alias d='cd ~/Desktop'
alias s='cd ~/Desktop/src'
alias dd='cd ~/Library/CloudStorage/Dropbox'
alias h='cd ~'
alias up='cd ..'
alias f='open "$(fzf)"'

# npm
alias dev='npm run dev'
alias build='npm run build'

# Docker
alias dup='docker-compose up --build -d'
alias ddown='docker-compose down'
alias dlogs='docker-compose logs -f'

# Git
alias gs='git status'