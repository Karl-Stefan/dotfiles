local status, cmp = pcall(require, 'cmp')
if not status then
  return
end

vim.opt.completeopt = 'menu,menuone,noselect'

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'buffer' },
    { name = 'treesitter' },
  }),
})
