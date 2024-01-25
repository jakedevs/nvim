return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      width = 80,
    }
  },
  vim.keymap.set("n", "<leader>tz", ":ZenMode<cr>", { desc = "Toggle Zen mode"})
}
