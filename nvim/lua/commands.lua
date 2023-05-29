vim.cmd [[autocmd BufWritePre * %s/\s\+$//e ]]

-- Swap folder
vim.cmd('command! ListSwap split | enew | r !ls -l ~/.local/state/nvim/swap/')
vim.cmd('command! CleanSwap !rm -rf ~/.local/state/nvim/swap/')


