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
# keep aliases and paths in separate file
if [[ "$(uname)" = "Darwin" ]] ; then
  # OS X stuff goes here
  :
elif [[ "$(uname)" = "Linux" ]] ; then 
  # Set the Caps lock key to work as an escape key.
  ## Really removes anything bound to the caps lock key
  ## and maps the keycode for caps lock [see xkeycaps] to escape
  if [[ $DISPLAY ]] ; then
    xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
  fi
fi

