Readme
========
Source the following files in this directory your main bash_profile/bashrc file.

    source ~/bashrc/bashrc
    source ~/.bash_box_aliases
    # create the .bash_box_aliases file if it does not exist

Usual Settings
==================

Set git name and emailo

    git config --global user.name "Name"
    git config --global user.emai email@example.com
    git config --global color.ui true


OSX
=========

    # install homebrew
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    brew tap phinze/cask
    brew install brew-cask
    brew cask install google-chrome

Ubuntu
===================

    sudo apt-get install \
      silversearcher-ag
      vim
      git
      exuberant-ctags
