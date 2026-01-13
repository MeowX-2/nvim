vim.opt.expandtab = true
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.hlsearch = true
vim.opt.clipboard = "unnamedplus"
--vim.cmd("set spell")
--vim.cmd("setlocal spell spelllang=en_us")
--vim.g.mapleader =
vim.keymap.set(
  "n",
  "<C-b>",
  "<cmd>wall<cr><esc> <bar> :below split term:// g++ % -o out && ./out < in.txt <Return> <bar> :wincmd 4- <Return> :1 <Return>"
)
--vim.keymap.set("n", "<Esc>", ":close")
vim.api.nvim_create_user_command(
  "CP",
  "cd /home/meowx2/cp/ <bar> edit main.cpp <bar> :vsplit in.txt <bar> :wincmd L <bar> :wincmd 40< <bar> :wincmd h",
  {}
)

vim.cmd([[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]])
vim.diagnostic.config({
  virtual_text = false,
  float = {
    source = "always",
  },
})

