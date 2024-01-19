return {
  "rolv-apneseth/tfm.nvim",
  lazy = false,
  opts = {
    file_manager = "yazi",
    replace_netrw = true,
    enable_cmds = true,
    keybindings = {
      ["<ESC>"] = "q",
    },
  },
  keys = {
    {
      "<leader>fm",
      ":Tfm<CR>",
      desc = "file manager",
    },
    {
      "<leader>ft",
      function()
        local tfm = require("tfm")
        tfm.open(nil, tfm.OPEN_MODE.tabedit)
      end,
      desc = "file manager - file in new tab",
    },
  },
}
