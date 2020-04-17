#!/bin/bash

echo "Creating symlinks for dotfiles."

DOTFILES_DIRECTORY="$HOME/.dotfiles/dotfiles"

ln -sf "$DOTFILES_DIRECTORY/.gitconfig" "$HOME/"
ln -sf "$DOTFILES_DIRECTORY/.zshrc" "$HOME/"
ln -sf "$DOTFILES_DIRECTORY/visual-studio-code/settings.json" "$HOME/Library/Application Support/Code/User/"
ln -sf "$DOTFILES_DIRECTORY/.gitignore" "$HOME/"
ln -sf "$DOTFILES_DIRECTORY/.hyper.js" "$HOME/"

echo "Symlinks created successfully. You may need to restart your shell for the\
 changes to take effect."
