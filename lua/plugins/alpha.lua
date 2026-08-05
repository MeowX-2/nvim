return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                            ",
			"   ███╗   ██╗██╗   ██╗██╗███╗   ███╗   ",
			"   ████╗  ██║██║   ██║██║████╗ ████║   ",
			"   ██╔██╗ ██║██║   ██║██║██╔████╔██║   ",
			"   ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║   ",
			"   ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║   ",
			"   ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝   ",
			"                            ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "🔍  Find file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("n", "📄  New file", "<cmd>lua vim.keymap.get('n', '/fn').callback()<CR>"),
			dashboard.button("r", "🕒  Recent files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("g", "🔎  Find text", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("c", "⚙️   Configuration", "<cmd>e $MYVIMRC<CR>"),
			dashboard.button("q", "🚪  Quit Neovim", "<cmd>qa<CR>"),
		}

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
