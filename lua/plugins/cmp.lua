return {
    {"neovim/nvim-lspconfig"}, {"hrsh7th/cmp-nvim-lsp"}, {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"}, {"hrsh7th/cmp-cmdline"}, {"saadparwaiz1/cmp_luasnip"},
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end
                },

                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({select = true})
                }),

                window = {},

                sources = cmp.config.sources({
                    {name = "path"}, {name = "nvim_lsp"}
                }, {{name = "buffer"}})
            })

            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({{name = "path"}},
                                             {{name = "cmdline"}})
            })
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
            require("lspconfig")["lua_ls"].setup({capabilities = capabilities})
            require("lspconfig")["rust_analyzer"].setup({
                capabilities = capabilities
            })
        end
    }
}
