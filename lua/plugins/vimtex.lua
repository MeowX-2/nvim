return {
  'lervag/vimtex',
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = "zathura"
    vim.g.latex_view_general_viewer = "zathura"
  end,
}
