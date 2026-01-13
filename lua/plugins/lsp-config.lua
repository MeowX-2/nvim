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
					"stylua",
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
				{ "lua_ls", "texlab", "eslint", "html", "pylsp", "pyright", "ts_ls", "denols", "cssls", "clangd" }
			for _, server_name in ipairs(servers) do
				vim.lsp.config(server_name, {
					capabilities = capabilities,
				})
				vim.lsp.enable(server_name)
			end

			-- Special configuration for pylsp
			vim.lsp.config("pylsp", {
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

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set({ "n" }, "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
}
