#!/bin/bash

# Git Setup
echo "Copying gitconfig to ~/.gitconfig..."
cp .gitconfig ~/.gitconfig

echo "Configuring git author name and email..."
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"