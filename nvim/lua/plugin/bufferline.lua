local bufferline = require('bufferline')
bufferline.setup({
  options = {
    style_preset = bufferline.style_preset.minimal,
    close_command = "bdelete! %d",
    numbers = 'ordinal',
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true
      }
    }
  }
}
)

vim.keymap.set('n', '<C-b>h', ':BufferLineCyclePrev<CR>', { desc = "Go to left buffer" })
vim.keymap.set('n', '<C-b>l', ':BufferLineCycleNext<CR>', { desc = "Go to right buffer" })
vim.keymap.set('n', '<C-b>H', ':BufferLineMovePrev<CR>', { desc = "Move buffer to left" })
vim.keymap.set('n', '<C-b>L', ':BufferLineMoveNext<CR>', { desc = "Move buffer to right" })
vim.keymap.set('n', '<C-b>q', ':bdelete!<CR>', { desc = "Close current buffer" })
vim.keymap.set('n', '<C-b>p', ':BufferLineTogglePin<CR>', { desc = "Toggle pin current buffer" })
-- navigate between buffer
function navigateBuffer(bNum)
  if bNum ~= nil and bNum ~= '' then
    local cmd = 'BufferLineGoToBuffer ' .. bNum
    vim.api.nvim_command(cmd)
  end
end

function triggerNavigateBuffer()
  local num = vim.fn.nr2char(vim.fn.getchar())
  navigateBuffer(num)
end

vim.keymap.set('n', '<Tab>', "<cmd>lua triggerNavigateBuffer()<CR>", { silent = true, desc = "Go to buffer n" })
