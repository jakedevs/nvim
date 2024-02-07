return {
  "NeogitOrg/neogit",
  branch = "nightly",
  dependencies = {
    "nvim-lua/plenary.nvim",       
    "sindrets/diffview.nvim",      

  },
  config = function()
  require("neogit").setup()
  vim.keymap.set("n", "<leader>g", ":Neogit<cr>", {desc = "open neogit"})
  end
}

