local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status then
  return
end

treesitter.setup({
  highlight = {
    enable = true
  },
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    'c',
    'c_sharp',
    'comment',
    'cmake',
    'cpp',
    'diff',
    'git_config',
    'gitcommit',
    'go',
    'vimdoc',
    'json',
    'javascript',
    'java',
    'jq',
    'luadoc',
    'yaml',
    'html',
    'http',
    'ini',
    'css',
    'passwd',
    'php',
    'phpdoc',
    'python',
    'toml',
    'regex',
    'scss',
    'sql',
    'terraform',
    'ruby',
    'rust',
    'markdown',
    'graphql',
    'bash',
    'lua',
    'vim',
    'gitignore',
    'dockerfile',
  }
})
