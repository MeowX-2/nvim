return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				auto_installed = true,
				ensure_installed = { "lua_ls", "texlab", "ts_ls", "eslint", "html", "js-debug-adapter" },
			})
		end,
	},
	{
		"nvim-java/nvim-java",
		config = function()
			require("java").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				auto_installed = true,
				ensure_installed = { "lua_ls", "texlab", "eslint", "html", "pylsp" },
				preferences = { disableSuggestions = true },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				root_dir = lspconfig.util.root_pattern("package.json"),
				diagnostic = {
					on_insert = false,
				},
				single_file_support = false,
				init_options = {
					preferences = {
						disableSuggestions = true,
					},
				},
			})
			lspconfig.denols.setup({
				capabilities = capabilities,
				root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
				diagnostic = {
					on_insert = false,
				},
				init_options = {
					preferences = {
						disableSuggestions = true,
					},
				},
				settings = {
					deno = {
						enable = true,
						suggest = {
							imports = {
								hosts = {
									["https://deno.land"] = true,
								},
							},
						},
					},
				},
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.texlab.setup({
				capabilities = capabilities,
			})
			lspconfig.eslint.setup({
				capabilities = capabilities,
				preferences = {
					disableSuggestions = true,
				},
			})
			lspconfig.pylsp.setup({
				capabilities = capabilities,
				preferences = {
					disableSuggestions = true,
				},
			})
			-- vim.cmd("vim.diagnsotic.config({ virt_text = { source = false } })")
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
