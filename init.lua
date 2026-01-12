---@diagnostic disable: undefined-global
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
require("autoclose").setup()
require("lspconfig").pyright.setup({})

-------------------------
vim.cmd("colorscheme ofirkai")
vim.cmd("se cursorline")
local opts = {}

vim.g.vimtex_view_method = "zathura"
vim.g.latex_view_general_viewer = "zathura"
--vim.g.vimtex_compiler_progname = 'nvr'

--local telescope = require('telescope')
--       telescope.setup {
--      pickers = {
-- find_files = {
-- hidden = true
-- }}}
