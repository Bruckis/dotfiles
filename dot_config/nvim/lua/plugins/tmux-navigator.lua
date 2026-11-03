-- Ctrl+h/j/k/l moves between nvim splits AND tmux panes (tmux side is in tmux.conf).
return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = { "TmuxNavigateLeft", "TmuxNavigateDown", "TmuxNavigateUp", "TmuxNavigateRight", "TmuxNavigatePrevious" },
    keys = {
      { "<c-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Go to left pane" },
      { "<c-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Go to lower pane" },
      { "<c-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Go to upper pane" },
      { "<c-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Go to right pane" },
    },
  },
}
