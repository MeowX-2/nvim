return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			sections = {
				lualine_b = {
					"os.date('%a%d/%m/%y%H:%M')",
				},
				lualine_x = { "encoding", {
					"fileformat",
					symbols = { unix = "󰣇" },
				} },
			},

			options = {
				--theme = "gruvbox-material",
				section_separators = { left = "", right = "" },
				--component_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			},
		})
	end,
}
