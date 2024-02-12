return {

  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function() require("mason").setup() end,
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.biome.setup({})
      -- lspconfig.ltex.setup({
      --   settings = {
      --     ltex = {
      --       language = "en-US",
      --     },
      --   },
      -- })
      settings = {}
    end,
  },
  { "folke/neodev.nvim", ft = "lua" },
}
