#!/bin/bash

# Git Setup
echo "Copying gitconfig to ~/.gitconfig..."
cp .gitconfig ~/.gitconfig

echo "Configuring git author name and email..."
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions 

# Install zsh-syntax
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Alias Setup
if [ -d "$ZSH_CUSTOM" ]; then
  echo "Copying aliases to ${ZSH_CUSTOM}/aliases.zsh..."
  cp aliases.zsh ${ZSH_CUSTOM}
else
  echo "${ZSH_CUSTOM} is not setup. Install oh-my-zsh and continue"
fi