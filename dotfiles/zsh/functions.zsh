#!/usr/bin/env zsh

# fzf find and open file
f() {
  local sel
  sel="$(fd --type f --hidden --follow --exclude .git --exclude node_modules 2>/dev/null \
    | fzf --select-1 --exit-0 \
          --preview 'bat --color=always --style=numbers --line-range=:500 {} 2>/dev/null || cat {}' \
          --preview-window=right:60%)" || return
  open -- "$sel"
}

# ripgrep open in vscode
rgv() {
  local sel file line
  sel="$(rg -n -S --hidden --glob "!.git/*" --glob "!node_modules/*" -i --no-heading --color=always . \
    | fzf --ansi --delimiter : --nth 1,2,3 \
          --preview 'bat --color=always --style=numbers --highlight-line {2} {1} 2>/dev/null || cat {1}' \
          --preview-window=right:60%:+{2}-/2)" || return
  file="$(printf '%s' "$sel" | cut -d: -f1)"
  line="$(printf '%s' "$sel" | cut -d: -f2)"
  code -g "${file}:${line}"
}

# Open directory in macos
fdd() {
  local dir
  dir="$(fd --type d --hidden --follow --exclude .git 2>/dev/null \
    | fzf --preview 'eza -T --level=2 --group-directories-first --git-ignore --ignore-glob="node_modules|.git|.next" {}' \
          --preview-window=right:60%)" || return
  open "$dir"
}

# Open directory in vscode
fdv() {
  local dir
  dir="$(fd --type d --hidden --follow --exclude .git 2>/dev/null \
    | fzf --preview 'eza -T --level=2 --group-directories-first --git-ignore --ignore-glob="node_modules|.git|.next" {}' \
          --preview-window=right:60%)" || return
  code "$dir"
}

# fzf find project files
_find_projects() {
  fd -H -t d -d 4 \
    -E .git \
    -E node_modules \
    -E dist \
    -E build \
    -E .next \
    -E Library \
  | while read -r d; do
      [ -d "$d/.git" ] || [ -f "$d/package.json" ] || [ -f "$d/pyproject.toml" ] || continue
      echo "$d"
    done | fzf --preview 'eza -T --level=2 --group-directories-first --git-ignore --ignore-glob="node_modules|.git|.next" {}' \
               --preview-window=right:60%
}

# Find project directories and open in macos
fdp() { 
  local dir
  dir="$(_find_projects)" || return
  open "$dir"
}

# Find project directories and open in vscode
fdpv() { 
  local dir
  dir="$(_find_projects)" || return
  code "$dir"
}