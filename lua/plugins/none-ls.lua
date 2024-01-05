return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.lua_ls,
				null_ls.builtins.formatting.biome,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.completion.spell,
			},
		})
	end,
}
