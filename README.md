# Dotfiles

Dotfiles - personal preferences for various applications, editors, linters, and packages on macOS.

## Installation

1. Clone the dotfiles repository as a hidden directory (`.dotfiles`) within `$HOME`.

    ```BASH
    git clone git@github.com:jakecobley/dotfiles.git $HOME/.dotfiles
    ```

1. Execute the `create-symlinks.sh` script to symlink the dotfiles' to their required destinations.

    **NOTE:** You'll likey have to modify the script's permissions to make it executable;  `chmod +x setup.sh`.

    ```BASH
    $HOME/.dotfiles/create-symlinks.sh
    ```

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

This project is licenced under the [MIT](https://github.com/jakecobley/dotfiles/blob/master/LICENCE) Licence - see the [LICENCE](https://github.com/jakecobley/dotfiles/blob/master/LICENCE) for details.
