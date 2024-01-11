return {
	"liaohui5/vite-server.nvim",
	config = function()
    require("vite-server").setup({
		vite_cli_opts = {
			open = true,
		}
    })
	end,
}
