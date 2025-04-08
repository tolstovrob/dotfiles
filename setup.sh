#!/bin/bash

removePrevConfig() {
  echo "Removing previous configuration..."
  rm -rf ~/.zshrc
  rm -rf ~/.config/kitty
  rm -rf ~/.config/zed
  rm -rf ~/.p10k.zsh
}

if [ $# -eq 0 ]; then
  read -p "You already have config installed. Remove it? (y/n): " answer
  if [[ $answer == "y" || $answer == "Y" ]]; then
    removePrevConfig
  else
    echo "Cancelled"
    exit 1
  fi
elif [ $1 == "-y" ]; then
  removePrevConfig
fi

echo "Creating symbolic links..."
ln -s ~/dotfiles/kitty ~/.config/kitty
ln -s ~/dotfiles/zed ~/.config/zed
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/powerlevel10k/.p10k.zsh ~/.p10k.zsh

echo "Cloning Zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || echo "Failed to clone zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || echo "Failed to clone zsh-syntax-highlighting"

source ~/.zshrc
clear

echo "Installation completed!"
