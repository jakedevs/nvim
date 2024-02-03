return -- Lua
{
  {
    "folke/zen-mode.nvim",
    dependencies = "folke/twilight.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },

  { "preservim/vim-pencil" },
  vim.keymap.set("n", "<leader>zm", ":ZenMode<cr>", { desc = "Toggle Mode Zen" }),
  vim.keymap.set("n", "<leader>wm", ":ZenMode | PencilToggle<cr>", { desc = "Toggle Mode Writing" }),
}
