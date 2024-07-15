local status, bufferline = pcall(require, 'bufferline')
if not status then
  return
end

local highlights = require("catppuccin.groups.integrations.bufferline").get()

bufferline.setup({
  options = {
    style_preset = bufferline.style_preset.default,
    separator_style = "thin",
    indicator = {
      icon = '', -- this should be omitted if indicator style is not 'icon'
      style = 'none',
    },
    buffer_close_icon = '',
    modified_icon = '',
    close_icon = '',
    offsets = {
      {
        filetype = 'NvimTree',
        text = '',
        separator = false,
      }
    },
    color_icons = false,
    show_buffer_icons = false,
  },
  highlights = highlights,
})
