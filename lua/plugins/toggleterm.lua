return {
  -- amongst your other plugins
  { "akinsho/toggleterm.nvim", config = true },
  vim.keymap.set("n", "<leader>to", ":ToggleTerm direction=float<cr>", {desc = "toggle terminal"})
}
