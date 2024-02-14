return {
  { "akinsho/toggleterm.nvim", cmd = "ToggleTerm", config = true },
  vim.keymap.set("n", "<leader>to", ":ToggleTerm direction=float<cr>", { desc = "toggle terminal" }),
}
