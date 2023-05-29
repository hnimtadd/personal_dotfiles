local NvimTree = require('nvim-tree')
NvimTree.setup({})
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
