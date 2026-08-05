return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"texlab",
					"eslint",
					"html",
					"pylsp",
					"pyright",
					"ts_ls",
					"denols",
					"cssls",
					"clangd",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local servers =
				{ "lua_ls", "texlab", "eslint", "html", "pyright", "ts_ls", "denols", "cssls", "clangd" }

			if vim.lsp.config then
				vim.lsp.config("*", {
					capabilities = capabilities,
				})
				for _, server_name in ipairs(servers) do
					vim.lsp.enable(server_name)
				end

				vim.lsp.config("pylsp", {
					settings = {
						pylsp = {
							plugins = {
								pycodestyle = { enabled = false },
								pydocstyle = { enabled = false },
								mccabe = { enabled = false },
							},
						},
					},
				})
				vim.lsp.enable("pylsp")
			else
				local lspconfig = require("lspconfig")
				for _, server_name in ipairs(servers) do
					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end

				lspconfig.pylsp.setup({
					capabilities = capabilities,
					settings = {
						pylsp = {
							plugins = {
								pycodestyle = { enabled = false },
								pydocstyle = { enabled = false },
								mccabe = { enabled = false },
							},
						},
					},
				})
			end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set({ "n" }, "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
}
