return {
	--    "jose-elias-alvarez/null-ls.nvim",
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			debug = false,
			sources = {
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.linting.eslint,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.pyink,
				null_ls.builtins.completion.spell,
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.htmlbeautifier,
				--null_ls.builtins.code_actions.htmlhint,
				null_ls.builtins.formatting.clang_format,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		vim.diagnostic.config({
			virtual_text = false,
		})
	end,
}
