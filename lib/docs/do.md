# Do

## MacBook

- Log in to iCloud, App Store
- Settings
  - Scroll direction
  - Control Center
  - Desktop and Dock
  - Night shift
  - Touchpad click and tracking speed

## syskit

1. Go to https://github.com/marcusgeorgievski/syskit.git. Log in to GitHub and clone for history.

```sh
git clone https://github.com/marcusgeorgievski/syskit.git ~
```

2. Install Homebrew

```sh
cd ~/syskit/lib/scripts
./homebrew.zsh
```

3. Install brew formulas, casks, and app store applications. Must be signed into the Mac App Store before running the bundle.

```sh
cd lib/scripts
brew tap Homebrew/bundle    # Ensure `brew bundle` is available
brew bundle install         # Run the Brewfile
```

4. Stow dotfiles

```sh
cd ~/syskit
stow -t ~ dotfiles
```

5. Install fonts, setup GitHub SSH, install manual applications

## Finalize

- Log into dropbox, pull macbook files locally
- Set raycast clipboard alias to 'cc'
- Import Me.terminal to terminal app
- Log in to VS and other applications
- Widgets: Stocks, github, weather
- Desktop and screensaver
