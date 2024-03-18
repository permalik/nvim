return {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lualine_var = require 'permalik.var.lualine'
        require('lualine').setup(lualine_var)
    end,
}
