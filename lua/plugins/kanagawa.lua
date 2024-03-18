return {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    init = function()
        vim.cmd.colorscheme 'kanagawa-lotus'
        vim.cmd.colorscheme 'kanagawa-wave'
        vim.cmd.colorscheme 'kanagawa-dragon'

        -- You can configure highlights by doing something like
        vim.cmd.hi 'Comment gui=none'
    end,
}
