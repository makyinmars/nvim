return {
  'OXY2DEV/markview.nvim',
  enabled = true,
  lazy = false,
  ft = { 'markdown', 'norg', 'rmd', 'org', 'vimwiki', 'Avante' },
  opts = {
    filetypes = { 'markdown', 'norg', 'rmd', 'org', 'vimwiki', 'Avante' },
    buf_ignore = {},
    max_length = 99999,
  },
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
}
