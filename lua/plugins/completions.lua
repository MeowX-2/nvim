return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/snippets" })
			require("luasnip.loaders.from_vscode").lazy_load()

			local ls = require("luasnip")
			ls.config.set_config({
				enable_autosnippets = true,
				store_selection_keys = "<Tab>",
			})

			vim.keymap.set({ "i", "s" }, "<Tab>", function()
				if ls.expand_or_jumpable() then
					ls.expand_or_jump()
				else
					return "<Tab>"
				end
			end, { expr = true, silent = true })

			vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
				if ls.jumpable(-1) then
					ls.jump(-1)
				end
			end, { silent = true })

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-c>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "luasnip" }, -- For luasnip users.
					{ name = "nvim_lsp" },
				}, {
					{ name = "buffer" },
				}),
			})
			-- cmp.setup.cmdline({ "/", "?" }, {
			--   mapping = cmp.mapping.preset.cmdline(),
			--   sources = {
			--     { name = "buffer" },
			--   },
			-- })
			-- cmp.setup.cmdline(":", {
			--   mapping = cmp.mapping.preset.cmdline(),
			--   sources = cmp.config.sources({
			--     { name = "path" },
			--   }, {
			--     { name = "cmdline" },
			--   }),
			--   matching = { disallow_symbol_nonprefix_matching = false },
			-- })
		end,
	},
}
