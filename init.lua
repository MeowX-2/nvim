--@diagnostic disable: undefined-global
require("globals")
vim.opt.termguicolors = true
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("vim-options")
require("lazy").setup("plugins")
-------------------------
vim.cmd("colorscheme kanagawa-wave")
vim.cmd("se cursorline")
local opts = {}

--local telescope = require('telescope')
--       telescope.setup {
--      pickers = {
-- find_files = {
-- hidden = true
-- }}}
