return {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
  config = function()
require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {
            config = { -- We added a `config` table!
                icon_preset = "varied", -- And we set our option here.
            },
        },
    }
})
  end,
}
