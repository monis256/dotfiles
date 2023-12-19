#!/bin/bash

# Git Setup
echo "Configuring GIT..."
cp .gitconfig ${HOME}/.gitconfig
read -p 'Author Name: ' AUTHOR_NAME
read -p 'Author Email: ' AUTHOR_EMAIL
git config --global user.name "$AUTHOR_NAME"
git config --global user.email "$AUTHOR_EMAIL"

# Alias Setup
echo "Configuring Aliases..."
cp .aliases ${HOME}/.aliases

## TO BE WORKED
# # Install oh my zsh
# echo "Installing zsh..."
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# # # Install powerlevel10k
# # git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# # # Install zsh-autosuggestions
# # git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions 

# # # Install zsh-syntax
# # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting