vim.cmd("set expandtab")
vim.cmd("set nu")
vim.cmd("set rnu")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set breakindent")
vim.cmd("set linebreak")
vim.cmd("set hlsearch")
vim.cmd("set clipboard+=unnamedplus")
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
vim.api.nvim_create_autocmd({ "CursorHold" }, {
    pattern = "*",
    callback = function()
        for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
            if vim.api.nvim_win_get_config(winid).zindex then
                return
            end
        end
        vim.diagnostic.open_float({
            scope = "cursor",
            focusable = true,
            close_events = {
                "CursorMoved",
                "CursorMovedI",
                "BufHidden",
                "InsertCharPre",
                "WinLeave",
            },
        })
    end
})
