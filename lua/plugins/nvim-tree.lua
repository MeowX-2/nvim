return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      update_cwd = true,
  view = {
    adaptive_size = true,
    centralize_selection = true,
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
  },
    }
        vim.keymap.set('n', '<C-n>', ':NvimTreeOpen<CR>')

  end,
}
