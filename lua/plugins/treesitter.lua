
return  {

  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",

    config = function()
      require'nvim-treesitter.configs'.setup {
        highlight = { enable = false, },
        indent = { enable = true, },
        autotag = { enable = true, },
        parser_install_dir = "~/.config/runtimeneovim",
  }
    end
  },


}
