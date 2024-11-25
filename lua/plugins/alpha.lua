return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        --require'alpha'.setup(require'alpha.themes.startify'.config)
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.startify")
        dashboard.section.header.val ={
[[                                                                                 ]],
[[                                                                                 ]],
[[  ██╗   ██╗ ██████╗     ███╗   ███╗███████╗ ██████╗ ██╗    ██╗██╗  ██╗██████╗ ██╗]],
[[  ╚██╗ ██╔╝██╔═══██╗    ████╗ ████║██╔════╝██╔═══██╗██║    ██║╚██╗██╔╝╚════██╗██║]],
[[   ╚████╔╝ ██║   ██║    ██╔████╔██║█████╗  ██║   ██║██║ █╗ ██║ ╚███╔╝  █████╔╝██║]],
[[    ╚██╔╝  ██║   ██║    ██║╚██╔╝██║██╔══╝  ██║   ██║██║███╗██║ ██╔██╗ ██╔═══╝ ╚═╝]],
[[     ██║   ╚██████╔╝    ██║ ╚═╝ ██║███████╗╚██████╔╝╚███╔███╔╝██╔╝ ██╗███████╗██╗]],
[[     ╚═╝    ╚═════╝     ╚═╝     ╚═╝╚══════╝ ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝╚══════╝╚═╝]],
    }
    alpha.setup(dashboard.opts)
    end,
}
