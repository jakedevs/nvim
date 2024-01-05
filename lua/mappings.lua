-- Buffer operations
vim.keymap.set("n", "<leader>bk", ":q!<cr>", {desc = "kill buffer"})
vim.keymap.set("n", "<leader>bl", builtin.buffers, {desc = "list buffers"})
vim.keymap.set("n", "<leader>bn", ":enew<cr>", {desc = "new buffer"})

-- File operations
vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "find files"})
vim.keymap.set("n", "<leader>fs", builtin.live_grep, {desc = "search text"})
vim.keymap.set("n", "<leader>fm", ":Yazi<cr>", {desc = "manage files"})

-- Terminal
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<cr>", {desc = "toggle terminal"})

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, {desc = "show docs"})
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {desc = "format code"})
vim.keymap.set({"n", "v"}, "<space>ca", vim.lsp.buf.code_action,
               {desc = "code actions "})
