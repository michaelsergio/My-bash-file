#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash display
PS1='[\u \w]\$ '

# nifty aliases
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -alF'
alias la='ls -A'

# compensate for stupid fingers and microsoft natural keyboard
alias bim='vim'

# color and formatting for tree command
alias tree="tree -CA"

# awesome shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# pacman aliases
alias pac="pacman -S" 
alias pacr="pacman -Rns"
alias pacu="pacman -Syu"

# allows vim to have colorful schemes
export TERM="xterm-256color"

# sets vim as editor for git (Highest Priority)
export GIT_EDITOR="vim"

# make sure to use vim for everything else
export EDITOR="vim"

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin 

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
