#!/bin/sh
# tmux: plugin manager, Catppuccin theme (pinned), then install the TPM plugins.
set -eu
P="$HOME/.config/tmux/plugins"
[ -d "$P/tpm" ] || git clone -q --depth 1 https://github.com/tmux-plugins/tpm "$P/tpm"
[ -d "$P/catppuccin/tmux" ] || git -c advice.detachedHead=false clone -q --depth 1 -b v2.3.2 https://github.com/catppuccin/tmux.git "$P/catppuccin/tmux"
"$P/tpm/bin/install_plugins" >/dev/null
