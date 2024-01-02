vim.g.mapleader = " "
vim.g.localmapleader = " "

-- Buffer operations
vim.keymap.set('n', '<leader>bk', ":q<cr>", { desc = "kill buffer" })
vim.keymap.set('n', '<leader>bl', builtin.buffers, { desc = "list buffers" })
vim.keymap.set('n', '<leader>bn', ":enew<cr>", { desc = "new buffer" })

-- File operations
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "find files" })
vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = "search text"})

-- Terminal
vim.keymap.set('n', '<leader>tt', ":ToggleTerm<cr>", {desc = "toggle terminal"})
