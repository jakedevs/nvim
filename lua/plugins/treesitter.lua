
return  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",

  config = function()
      
    require'nvim-treesitter.configs'.setup {
      highlight = { enable = true, },
      indent = { enable = true, },
      autotag = { enable = true, },
      parser_install_dir = "~/.config/runtimeneovim",
      -- Temporarily disabled while Lua parse installation is broken
      disable = { "lua", },
}
  end
}
