#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

command_exists () {
    type "$1" &> /dev/null ;
}

# bash display
PS1='[\u \w]\$ '

# git bash display
#PS1='\h:\W$(__git_ps1 "(%s)") \u\$ '



if [[ "$(uname)" = "Darwin" ]] ; then
  alias ls='ls -G'
elif [[ "$(uname)" = "Linux" ]] ; then 
  alias ls='ls --color=auto'
fi

# nifty aliases
alias l='ls'
alias ll='ls -alF'
alias la='ls -A'

# compensate for stupid fingers and microsoft natural keyboard
alias bim='vim'

# color and formatting for commands
alias tree="tree -CA"
alias grep="grep --color"

if command_exists grc ; then
  alias tail="grc tail"
fi

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

# use git completion
source ~/.git-completion.bash

# sets vim as editor for git (Highest Priority)
export GIT_EDITOR="vim"

# make sure to use vim for everything else
export EDITOR="vim"

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin 

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

# Have ssh autocomplete host name from ssh conf file
# Uses word list from conf file where Host is stripped out
complete -W "$(echo `cat ~/.ssh/config | grep Host | sed 's/Host[a-z]* *//'`;)" ssh

if [[ "$(uname)" = "Darwin" ]] ; then
  # Add MAMPs PHP
  PATH=/Applications/MAMP/bin/php/php5.4.4/bin:$PATH
elif [[ "$(uname)" = "Linux" ]] ; then 
  echo
fi


