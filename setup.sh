#!/usr/bin/env bash

# Setup SSH public keys
[ ! -d "~/.ssh" ] && mkdir ~/.ssh
cp ~/.dotfiles/.ssh/authorized_keys ~/.ssh/authorized_keys

# Git Setup
cp ~/.dotfiles/.gitconfig ~/.gitconfig
git config --global user.name "$GIT_USERNAME"
git config --global user.email "$GIT_EMAIL"

# oh-my-zsh
if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is installed"
 else
 	echo "oh-my-zsh is not installed. installing..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cp ~/.dotfiles/.zshrc ~/.zshrc
fi


# Plugins
if [ -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]; then
	echo "powerlevel10k is installed"
 else
 	echo "powerlevel10k is not installed. installing..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
    cp ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
fi

if [ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
	echo "zsh-autosuggestions is installed"
 else
 	echo "zsh-autosuggestions is not installed. installing..."
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Copy Configs
cp ~/.dotfiles/.bash_aliases ~/.bash_aliases