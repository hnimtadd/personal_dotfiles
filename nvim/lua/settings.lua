vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
if os.getenv('SHELL') == "/usr/bin/fish" or vim.opt.shell == "/usr/bin/fish" then
  vim.opt.shell = "/bin/sh"
else
  vim.opt.shell = os.getenv('SHELL')
end
