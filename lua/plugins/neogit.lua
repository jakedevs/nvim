return {
  "NeogitOrg/neogit",
  cmd = "Neogit",
  branch = "nightly",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  config = true,
  vim.keymap.set("n", "<leader>g", ":Neogit<cr>", { desc = "open neogit" }),
}
