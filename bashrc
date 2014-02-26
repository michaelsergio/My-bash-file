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

# colorful less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# A nicer git log
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"


# sets vim as editor for git (Highest Priority)
export GIT_EDITOR="vim"
# make sure to use vim for everything else
export EDITOR="vim"


# Other sources
source ~/bashrc/paths
source ~/bashrc/aliases

# Extra Completions
source ~/bashrc/completions


# OS Specific Stuff
if [[ "$(uname)" = "Darwin" ]] ; then
  export GOPATH="/Users/msergio/code/go"
elif [[ "$(uname)" = "Linux" ]] ; then 
  # Set the Caps lock key to work as an escape key.
  ## Really removes anything bound to the caps lock key
  ## and maps the keycode for caps lock [see xkeycaps] to escape
  xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
fi

