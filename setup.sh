#!/bin/bash

removePrevConfig() {
    echo "Removing previous configuration..."
    rm -rf ~/.zshrc
    rm -rf ~/.config/kitty
    rm -rf ~/.config/nvim
    rm -rf ~/.p10k.zsh
}

# Проверка аргументов
if [ "$#" -eq 0 ]; then
    read -p "You already have config installed. Remove it? (y/n): " answer
    if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
        removePrevConfig
    else
        echo "Cancelled"
        exit 1
    fi
elif [ "$1" == "-y" ]; then
    removePrevConfig
fi

# Создание символических ссылок
echo "Creating symbolic links..."
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/kitty ~/.config/kitty
ln ~/dotfiles/.zshrc ~/.zshrc
ln ~/dotfiles/.p10k.zsh ~/.p10k.zsh

# Клонирование плагинов Zsh
echo "Cloning Zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || echo "Failed to clone zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || echo "Failed to clone zsh-syntax-highlighting"

# Перезагрузка конфигурации Zsh
source ~/.zshrc

# Очистка экрана
clear
