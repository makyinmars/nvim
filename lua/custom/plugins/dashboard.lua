return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local db = require 'dashboard'
    local home = os.getenv 'HOME'

    db.setup {
      theme = 'doom',
      config = {
        week_header = {
          enable = false,
        },
        center = {
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = 'Find File',
            desc_hl = 'String',
            key = 'f',
            keymap = 'SPC f f',
            key_hl = 'Number',
            action = ':Telescope find_files',
          },
          {
            icon = '  ',
            desc = 'New File',
            key = 'e',
            keymap = 'SPC e',
            action = ':ene <BAR> startinsert',
          },
          {
            icon = '  ',
            desc = 'Recent Files',
            key = 'r',
            keymap = 'SPC f r',
            action = ':Telescope oldfiles',
          },
          {
            icon = '  ',
            desc = 'Find Text',
            key = 't',
            keymap = 'SPC f t',
            action = ':Telescope live_grep',
          },
          {
            icon = '  ',
            desc = 'Lazy',
            key = 'l',
            keymap = 'SPC l',
            action = ':Lazy',
          },
          {
            icon = '  ',
            desc = 'Configuration',
            key = 'c',
            keymap = 'SPC f c',
            action = ':e $MYVIMRC',
          },
          {
            icon = '  ',
            desc = 'Quit',
            key = 'q',
            keymap = 'SPC q',
            action = ':qa',
          },
        },
        footer = {}, -- We'll leave this empty as the original config didn't have a specific footer
      },
      hide = {
        statusline = false,
        tabline = false,
        winbar = false,
      },
      preview = {
        command = 'chafa --passthrough tmux -f symbols -s 60x60 -c full --fg-only --symbols braille --clear',
        -- file_path = '$(ls ' .. home .. '/.config/nvim/static/*.gif | sort -R)',
        file_path = home .. '/.config/nvim/static/apple.gif',
        file_height = 24,
        file_width = 64,
      },
    }
  end,
}
