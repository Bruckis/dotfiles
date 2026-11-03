# dotfiles

Managed with [chezmoi](https://chezmoi.io). Arch / CachyOS, zsh + Starship + tmux + LazyVim, Catppuccin Macchiato.

## Install on a fresh machine

    curl -fsSL https://dots.bruck.is | sh

This installs chezmoi, clones this repo, installs packages and writes all configs.

## Day to day

    chezmoi edit ~/.zshrc      # edit, then `chezmoi apply`
    chezmoi re-add             # pick up changes made directly in $HOME
    chezmoi diff               # see what apply would change
    chezmoi cd                 # go to the repo, then git commit/push
    chezmoi update             # pull + apply on another machine

Machine-only settings and secrets go in `~/.zshrc.local` (never committed).
