# `syskit`

Personal automation and setup.

```sh
git clone https://github.com/marcusgeorgievski/syskit.git ~
```

## `dotfiles`

Manage basic dotfiles and environment setup.

Stow creates symlinks from a **stow directory** to a **target directory**. Run the following commands to stow files from `dotfile` to `~`.

```sh
cd syskit
stow -t ~ dotfiles
```

**Reference**

```sh
-d  # stow dir
-t  # target dir
stow -t ~ -R dotfiles  # Restow (update)
stow -t ~ -D dotfiles  # Unstow (remove symlynks)
```

## `lib`

Install and setup applications.

1. Install Homebrew

```sh
./homebrew.zsh
```

2. Install brew formulas, casks, and app store applications. Must be signed into the Mac App Store before running the bundle.

```sh
cd lib/scripts
brew tap Homebrew/bundle    # Ensure `brew bundle` is available
brew bundle install         # Run the Brewfile
```

## Notes
# syskit
