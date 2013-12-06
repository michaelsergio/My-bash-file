#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

command_exists () {
    type "$1" &> /dev/null ;
}

# bash display
# No User
PS1='\w\$ '
# With User
#PS1='[\u \w]\$ '
# git bash display
#PS1='\h:\W$(__git_ps1 "(%s)") \u\$ '

# allows vim to have colorful schemes
export TERM="xterm-256color"

# sets vim as editor for git (Highest Priority)
export GIT_EDITOR="vim"
# make sure to use vim for everything else
export EDITOR="vim"

# Disable caps lock ubuntu
setxkbmap -option caps:none

# Have ssh autocomplete host name from ssh conf file
# Uses word list from conf file where Host is stripped out
complete -W "$(echo `cat ~/.ssh/config | grep Host | sed 's/Host[a-z]* *//'`;)" ssh

# Other sources
source ~/bashrc/paths
source ~/bashrc/aliases


# Add git completion to OSX
if [[ "$(uname)" = "Darwin" ]] ; then
  source ~/.git-completion.bash
fi
