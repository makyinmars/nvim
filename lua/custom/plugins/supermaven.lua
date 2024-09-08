return {
  'supermaven-inc/supermaven-nvim',
  cmd = {
    'SupermavenStart',
    'SupermavenStop',
    'SupermavenRestart',
    'SupermavenToggle',
    'SupermavenStatus',
    'SupermavenUseFree',
    'SupermavenUsePro',
    'SupermavenLogout',
    'SupermavenShowLog',
    'SupermavenClearLog',
  },
  config = function()
    require('supermaven-nvim').setup {
      keymaps = {
        accept_suggestion = '<C-y>',
      },
      ignore_filetypes = { env = true, zshrc = true },
      disable_inline_completion = false, -- disables inline completion for use with cmp
    }
  end,
  keys = {
    { '<leader>ct', '<cmd>SupermavenToggle<cr>', desc = 'Supermaven Toggle' },
  },
}
