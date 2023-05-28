----------------------------------------------------------------------------------------------------
---  Color theme setup -----------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

local status, theme = pcall(require, 'nord')
if not status then
  return
end

--- Nord theme config
vim.g.nord_cursorline_transparent = true
vim.g.nord_bold = true
vim.g.disable_backgrond = true
vim.g.nord_italic = true
vim.g.nord_contrast = true
vim.g.nord_uniform_diff_background = true

theme.set()
