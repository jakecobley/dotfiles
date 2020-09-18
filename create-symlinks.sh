#!/bin/bash

DOTFILES_DIRECTORY="$HOME/.dotfiles/dotfiles"

echo "Please select the environment..."

PS3="Environment #: "
options=("macOS" "Windows 10 with Windows Subsystem for Linux 2 (WSL2)" "Cancel")
select value in "${options[@]}"

do
  case $value in
    "macOS")
      echo "Environment: $value"
      echo "Creating symlinks for dotfiles."

      ln -sf "$DOTFILES_DIRECTORY/common/.gitconfig" "$HOME/"
      ln -sf "$DOTFILES_DIRECTORY/macos/.gitignore" "$HOME/"
      ln -sf "$DOTFILES_DIRECTORY/macos/.hyper.js" "$HOME/"
      ln -sf "$DOTFILES_DIRECTORY/macos/.zshrc" "$HOME/"

      echo "Symlinks created successfully. You may need to restart the shell for the changes to take effect."
      break
      ;;

    "Windows 10 with Windows Subsystem for Linux 2 (WSL2)")
      # NOTE: Assumes Windows username matches the username of the Windows
      # Subsystem for Linux 2 (WSL) distro.
      WINDOWS_HOME="/mnt/c/Users/${HOME//\/home\/}"

      echo "Environment: $value"
      echo "Creating symlinks for dotfiles."

      ln -sf "$DOTFILES_DIRECTORY/common/.gitconfig" "$HOME/"
      ln -sf "$DOTFILES_DIRECTORY/windows/.gitignore" "$HOME/"
      ln -sf "$DOTFILES_DIRECTORY/windows/.zshrc" "$HOME/"

      # NOTE: Symlinks cannot be created between Windows Subsystem for Linux 2
      # (WSL2) and Windows. The following files will be copied instead. Changes
      # to these files will not be synced, and will be overwritten when running
      # `./create-symlinks.sh`.
      cp -r "$DOTFILES_DIRECTORY/windows/.hyper.js" "$WINDOWS_HOME/AppData/Roaming/Hyper/"

      echo "Symlinks created successfully. You may need to restart the shell for the changes to take effect."
      break
      ;;
    "Cancel")
      break
      ;;

    *)
      echo "ERROR: Symlinks not created. Invalid environment selection."
      echo "Please select an environment from those listed above, or select \"Cancel\" (3) to abort symlink creation...."
      ;;
  esac
done
