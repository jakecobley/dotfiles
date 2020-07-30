# Dotfiles

Dotfiles - personal preferences for various applications, editors, linters, and packages on macOS and Windows 10 with Windows Subsystem for Linux 2 (WSL2).

## Installation

1. Clone the dotfiles repository as a hidden directory (`.dotfiles`) with `$HOME`.

    **NOTE**: On Windows, clone the dotfiles repository within Windows System for Linux 2 (WSL2) `$HOME` directory and not within Windows `$HOME`.

    ```BASH
    git clone git@github.com:jakecobley/dotfiles.git $HOME/.dotfiles
    ```    

1. Execute the `create-symlinks.sh` script and select the environment, `macOS` or `Windows 10 with Windows Subsystem for Linux 2 (WSL2)`, to symlink the dotfiles to their required destinations.
    
    **NOTE**: Symlinks cannot be created between Windows Subsystem for Linux 2 (WSL2) and Windows. Dotfiles which are required within Windows (Windows applications e.g. Hyper and Visual Studio Code) will be copied instead. Changes to these files will not be synced, and will be overwritten when running `./create-symlinks.sh`.

    ```BASH
    $HOME/.dotfiles/create-symlinks.sh
    ```

    **NOTE:** You'll likey have to modify the script's permissions to make it executable;  `chmod +x create-symlinks.sh`.

## Usage

The dotfiles are synced between the local (devices) and remote (Github) via Git.

### Fetch Dotfiles

Fetch and apply the dotfiles from the remote repository (GitHub).

```BASH
git -C $HOME/.dotfiles pull; $HOME/.dotfiles/create-symlinks.sh
```

### Update Dotfiles

Push the local (device's) dotfiles to the remote repository (GitHub).

**NOTE:** Update the symlinks within the `create-symlinks.sh` script when adding and/or removing dotfiles.

```BASH
git -C $HOME/.dotfiles commit -a -m "Update dotfiles"; git -C $HOME/.dotfiles push
```

## Copyright and License

This project is licenced under the [ISC](https://github.com/jakecobley/dotfiles/blob/master/LICENCE) Licence - see the [LICENCE](https://github.com/jakecobley/dotfiles/blob/master/LICENCE) for details.
