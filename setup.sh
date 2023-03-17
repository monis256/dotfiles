#!/usr/bin/env bash

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy Configs
cp .gitconfig ~/.gitconfig
cp .p10k.zsh ~/.p10k.zsh
cp .zshrc ~/.zshrc

# Setup SSH public keys
[ ! -d "~/.ssh" ] && mkdir ~/.ssh
cp .ssh/authorized_keys ~/.ssh/authorized_keys

# Git Setup
git config --global user.name "$GIT_USERNAME"
git config --global user.email "$GIT_EMAIL"