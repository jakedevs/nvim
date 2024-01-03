vim.o.termguicolors = true
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set smartindent")

vim.opt.showmode = false
vim.opt.syntax = off

-- which-key docs
local wk = require("which-key")
wk.register({
	b = { name = "buffer operations" },
	f = { name = "file operations" },
	t = { name = "terminal operations" },
}, { prefix = "<leader>" })
