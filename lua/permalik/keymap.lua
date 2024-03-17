local opts = { silent = true }
-- <space> is leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- netrw file browser
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
-- colorscheme
vim.keymap.set('n', '<leader>kl', ':colorscheme kanagawa-lotus<CR>', opts)
vim.keymap.set('n', '<leader>kw', ':colorscheme kanagawa-wave<CR>', opts)
vim.keymap.set('n', '<leader>kd', ':colorscheme kanagawa-dragon<CR>', opts)
