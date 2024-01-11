vim.o.termguicolors = true
vim.o.guifont = "Hack Nerd Font:h12"
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set autochdir")

vim.opt.showmode = false

-- which-key docs
local wk = require("which-key")
wk.register({
    b = {name = "buffer operations"},
    f = {name = "file operations"},
    t = {name = "terminal operations"}
}, {prefix = "<leader>"})
