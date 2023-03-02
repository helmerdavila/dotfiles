#!/bin/bash

echo "Installing nerd fonts"
  
if [ -d "$HOME/.nerd-fonts" ]; then
  echo "Fonts already installed"
else
    git clone --depth=1 https://github.com/ryanoasis/nerd-fonts ~/.nerd-fonts
    cd .nerd-fonts
    sudo ./install.sh
fi
