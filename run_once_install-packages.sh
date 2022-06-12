#!/bin/bash

# Base packages
sudo pacman -Sy git tmux bash python python-virtualenv neovim thefuck pyenv

# Install bash-it
if [ ! -d ~/.bash_it ]
then
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh --no-modify-config
fi

# Set up tmux-powerline
if [ ! -d ~/workspace/github.com/erikw/tmux-powerline ]
then
  mkdir -p ~/workspace/github.com/erikw/
  git clone https://github.com/erikw/tmux-powerline.git ~/workspace/github.com/erikw/tmux-powerline
fi

# Set up SpaceVIM
# Yes, I am a monster.
if [ ! -d ~/.SpaceVim ]
then
  curl -sLf https://spacevim.org/install.sh | bash
fi
