local bufresize = require('bufresize')
local opts = { noremap = true, silent = true }
bufresize.setup({
  register = {
    keys = {
      { "n", "<C-w>h", "10<C-w><", opts },
      { "n", "<C-w>l", "10<C-w>>", opts },
      { "n", "<C-w>k", "10<C-w>+", opts },
      { "n", "<C-w>j", "10<C-w>-", opts },
      { "n", "<C-w>_", "<C-w>_",   opts },
      { "n", "<C-w>-", "<C-w>=",   opts },
    },
    trigger_events = { "BufWinEnter", "WinEnter" },
  },
  resize = {
    keys = {},
    trigger_events = { "VimResized" },
    increment = 5,
  },
})
