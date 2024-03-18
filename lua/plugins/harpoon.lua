return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local harpoon = require 'harpoon'
        harpoon:setup {}

        local conf = require('telescope.config').values

        vim.keymap.set('n', '<leader>a', function()
            harpoon:list():append()
        end, { desc = '[a]ppend harpoon buffer' })
        vim.keymap.set('n', '<C-/>a', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = '[s]earch harpoon buffers' })
        vim.keymap.set('n', '<C-/>q', function()
            harpoon:list():select(1)
        end, { desc = 'select harpoon bay [q]/1' })
        vim.keymap.set('n', '<C-/>w', function()
            harpoon:list():select(2)
        end, { desc = 'select harpoon bay [w]/2' })
        vim.keymap.set('n', '<C-/>e', function()
            harpoon:list():select(3)
        end, { desc = 'select harpoon bay [e]/3' })
        vim.keymap.set('n', '<C-/>r', function()
            harpoon:list():select(4)
        end, { desc = 'select harpoon bay [r]/4' })
        vim.keymap.set('n', '<C-/>s', function()
            harpoon:list():prev()
        end, { desc = 'select [A]/previous harpoon bay' })
        vim.keymap.set('n', '<C-/>d', function()
            harpoon:list():next()
        end, { desc = 'select [S]/next harpoon bay' })
    end,
}
