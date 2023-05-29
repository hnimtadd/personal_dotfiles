local bufferline = require('bufferline')
bufferline.setup({
  options = {
    style_preset = bufferline.style_preset.minimal,
    close_command = "bdelete! %d",
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
