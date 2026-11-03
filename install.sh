#!/bin/sh
# Bootstrap: curl -fsSL https://dots.bruck.is | sh
set -eu
command -v sudo >/dev/null || { echo "Install sudo and add your user to it first." >&2; exit 1; }
# Full sync+upgrade first: a fresh install's package lists are often stale (Arch: no partial upgrades).
sudo pacman -Syu --needed --noconfirm git curl
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin" init --apply bruckis
