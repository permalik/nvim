-- __config
-- <space> is leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- netrw file browser
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
-- colorscheme
vim.keymap.set('n', '<leader>kl', ':colorscheme kanagawa-lotus<CR>', {
    desc = 'set [k]anagawa-[l]otus colorscheme',
    silent = true,
})
vim.keymap.set('n', '<leader>kw', ':colorscheme kanagawa-wave<CR>', {
    desc = 'set [k]anagawa-[l]otus colorscheme',
    silent = true,
})
vim.keymap.set('n', '<leader>kd', ':colorscheme kanagawa-dragon<CR>', {
    desc = 'set [k]anagawa-[l]otus colorscheme',
    silent = true,
})
-- diagnostic
vim.keymap.set(
    'n',
    '[d',
    vim.diagnostic.goto_prev,
    { desc = 'go to previous [d]iagnostic message' }
)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'go to next [d]iagnostic message' })
vim.keymap.set(
    'n',
    '<leader>e',
    vim.diagnostic.open_float,
    { desc = 'show diagnostic [e]rror messages' }
)
vim.keymap.set(
    'n',
    '<leader>q',
    vim.diagnostic.setloclist,
    { desc = 'open diagnostic [q]uickfix list' }
)
