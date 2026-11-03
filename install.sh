#!/bin/sh
# Bootstrap: curl -fsSL https://dots.bruck.is | sh
set -eu
command -v git >/dev/null || sudo pacman -S --needed --noconfirm git
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin" init --apply bruckis
