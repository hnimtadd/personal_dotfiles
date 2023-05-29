require('nvim-tmux-navigation').setup {
  disable_when_zoomed = true, -- defaults to false
  keybindings = {
    left = "<C-h>",
    down = "<C-j>",
    up = "<C-k>",
    right = "<C-l>",
    last_active = "<C-\\>",
    next = "<C-Space>",
  }
}
vim.keymap.set('n', '<C-U>', '<C-U>zz')
vim.keymap.set('n', '<C-D>', '<C-D>zz')
vim.keymap.set('n', '<C-h>', '<cmd>NvimTmuxNavigateLeft<CR>', { silent = false })
vim.keymap.set('n', '<C-J>', '<cmd>NvimTmuxNavigateDown<CR>', { silent = false })
vim.keymap.set('n', '<C-K>', '<cmd>NvimTmuxNavigateUp<CR>', { silent = false })
vim.keymap.set('n', '<C-L>', '<cmd>NvimTmuxNavigateRight<CR>', { silent = false })
