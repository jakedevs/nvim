-- Native Neovim mappings
-- Neovim options
require("options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

  {'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },


  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  {"rebelot/kanagawa.nvim"},

  {"folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {}
  },



}

-- Plugin options
local opts = {}

require("lazy").setup(plugins, opts)

builtin = require("telescope.builtin")


vim.cmd("colorscheme kanagawa")

vim.opt.runtimepath:append("~/.config/runtimeneovim")

require'nvim-treesitter.configs'.setup {
    highlight = { enable = true,},
    indent = { enable = true,},
    parser_install_dir = "~/.config/runtimeneovim",
    -- Temporarily disabled while Lua parse installation is broken
    disable = { "lua", },
}


require("mappings")
