# MacBook Setup

## Settings

- Change device name
- Hide/Show meny bar items
- Dock hide and size
- Night shift
- Wallpaper
- Add left fingerprint
- Trackpad and scrolling

## GitHub

- Sign into GitHub on Safari
- Follow `syskit/lib/docs/github-ssh.md` SSH setup

```sh
git clone https://github.com/marcusgeorgievski/syskit.git ~
```

## Syskit

- Cloned to `~`
- Installed Developer Tools after being prompted, waited
- Install homebrew manually
- Run `brew bundle install` - do other things concurrently
- Stowed dotfiles

```sh
# Install packages in Brewfile
cd lib/scripts
brew bundle install
```

```sh
# Stow dotfiles
cd ~/syskit
stow -t ~ dotfiles

# Reference
stow -t ~ -R dotfiles  # Restow (update)
stow -t ~ -D dotfiles  # Unstow (remove symlynks)
```

## More

- Sign into Chrome, Bitwarden
- Installed dropbox
- Import `Me.terminal` profile
- Oh-my-zsh install
- Sign into VS Code
- Installed fonts from `syskit/lib/blobs`
- Fix stow issues
- Modify Finder settings
- Desktop widgets
- Setup other mac accounts (work, school)
- Stock and weather desktop widget

## Raycast

- Alias for clipboard history and AI
- OpenAI API key
