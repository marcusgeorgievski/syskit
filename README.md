# `syskit`

Personal automation and setup.

> See `syskit/lib/docs/do.md` for full instructions.

## `dotfiles/`

Manage basic dotfiles and environment setup.

Use stow to create symlinks from a **stow directory** (`dotfiles/`) to a **target directory** (`~`). See `/lib/docs/do.md`.

## `lib/`

Additional stuff.

- `blobs/` - fonts, exported configs.
- `docs/` - how-to and other notes
- `scripts/` - additional setup scripts, Brewfile

## Structure

```sh
syskit
│
├── dotfiles # this dir is stowed in ~
│   │
│   ├── config
│   │   ├── tmux
│   │   │   └── tmux.conf
│   │   └── vscode
│   │       └── settings.json
│   │
│   └── zsh # these files are sourced in .zshrc
│       ├── aliases.zsh     # bash aliases
│       ├── oh-my-zsh.zsh   # config
│       ├── plugins.zsh     # shell packages
│       ├── prompt.zsh      # shell prompt styling
│       └── stuff.zsh       # misc, etc.
│
└── lib # non-dotfile stuff
    │
    ├── blobs # useful files
    │   ├── cmunbi.ttf
    │   ├── cmunbx.ttf
    │   ├── cmunrm.ttf
    │   ├── cmunti.ttf
    │   ├── JetBrainsMonoNerdFontMono-Regular.ttf
    │   └── Me.terminal
    │
    ├── docs # useful docs
    │   ├── applications.yaml
    │   ├── do.md
    │   └── github-ssh.md
    │
    └── scripts # automate app/package installations
        └── Brewfile

```
