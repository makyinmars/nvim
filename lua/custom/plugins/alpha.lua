return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    local home = os.getenv 'HOME'

    local button = dashboard.button

    dashboard.section.header.val = {
      [[⠀⠀⠀⠀⠀⠀⠀⢀⢴⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⡎⢻⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⠀⠀⠠⢠⣿⣿⡓⣽⣿⣿⣿⣿⣏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣟⣧⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⠀⠀⢁⣼⡟⡯⡇⣿⣿⣿⣿⡿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⠀⠀⠀⠹⣼⡇⣻⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⢠⠀⡄⣺⣿⢇⣏⣿⣿⢿⣿⣿⣿⣿⢻⣾⣿⣿⣿⣿⣿⣿⣿⣿⣻⢿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⢀⣻⣾⠱⣽⢸⣼⣿⣿⣿⣼⡏⣿⣿⣿⡇⡿⣼⣿⣿⣿⡿⠻⣿⣿⣿⣿⣼⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⣴⣿⡿⣺⣿⣰⣯⣸⣿⣿⣟⣇⣿⣿⣻⣷⣿⣿⣭⣿⣷⠝⣮⣻⣿⣯⢷⣿⢸⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⣰⣿⣿⣟⣿⣟⣿⡏⣺⣿⣿⣿⢹⢿⣿⣿⣿⣶⣿⣿⣾⣟⠕⠐⣿⣿⠎⢽⡻⣸⣿⠟⣿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⢠⠟⢸⣿⣸⣿⣿⣿⡀⣧⣟⢿⣿⣇⠛⣿⣿⣿⣿⣻⣿⣷⣷⣳⡕⢿⢫⢿⣷⡟⣟⣞⣦⣘⢿⢱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠎⠰⢸⣿⣿⣿⢻⣿⢳⣏⣷⣷⣝⢿⣆⢙⡻⣿⣿⣯⢿⣟⣻⡍⣿⢰⣯⣿⣿⠛⡻⢟⠲⣯⢞⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠘⠀⠀⠸⣿⡃⣻⢸⣿⢸⣽⣽⣷⠻⣷⣽⣳⣿⣾⡻⣳⣿⢿⢸⡿⠹⡈⢉⣤⡆⠐⠒⠠⠠⣰⡷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠹⣿⣿⣿⣿⣿⣿⣿]],
      [[⠂⠀⠀⣸⢻⣿⠁⢾⣿⣾⣿⢿⡯⠜⢞⡿⢿⣾⣟⣿⣿⡝⢯⣸⣷⣟⣷⣼⣿⣿⣆⠂⣊⣾⣾⣯⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⡀⠀⠀⠇⢸⢿⡄⢸⣿⣿⣿⣿⠻⣇⠘⠹⠊⠉⠻⢿⣶⣽⣄⢱⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣵⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠐⠀⢸⠀⠸⠸⢹⡼⠸⣏⣿⣿⡇⠪⣣⡀⠀⠱⡄⠐⣾⡽⣟⣶⡝⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢳⣿⣿⣿⣿⣾⣿⣸⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⢸⠀⠀⠀⢻⣷⢷⡽⣞⣿⣷⠀⠀⠁⠀⠘⣿⣶⣿⣿⣿⣿⣿⣯⣿⣾⣿⣿⢟⣽⣾⣿⣿⣿⣿⢻⣿⣿⣿⣳⣾⣿⣽⣿⡘⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠘⣇⠀⠀⠀⠇⡹⣿⣿⡮⠙⠀⠀⠀⠀⠀⢸⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠷⣫⣿⣯⣾⢏⣿⣿⣿⡧⣷⣗⡿⣿⣿⡿⢼⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠘⠧⡀⠀⠘⡜⠈⠙⢿⣄⢄⠀⠀⠁⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣹⣿⣿⣟⣻⣯⣿⣿⡛⠷⢫⢑⣤⣿⣿⢳⣮⣿⢼⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠳⠵⡠⠀⡀⠀⠘⢽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⡍⢯⣾⣻⣿⣿⢵⣿⣾⢻⣣⢿⣿⣧⣿⣿⣿⣿⣿⠟⠁]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠁⠈⠻⣿⣿⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣻⡿⣫⣾⣿⣿⣝⣷⡣⣩⣿⣿⣿⣿⣿⣿⡟⠍⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣫⣾⣿⣿⢿⣿⣿⣿⣟⣾⣿⣿⣿⡿⢋⠌⠂⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⠟⣩⣾⣿⣿⣿⣿⣿⡾⡿⣿⣻⣿⣿⣿⣿⡇⠊⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⠟⠋⠀⢸⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⡻⡿⠋⡓⣿⣇⡀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠟⠛⠉⠉⠀⠀⠠⠀⠐⡺⢲⢗⠛⠓⠉⠛⠻⠀⠀⠀⠀⠀]],
    }
    dashboard.section.buttons.val = {
      button('f', '  Find file', ':Telescope find_files <CR>'),
      button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      button('r', '  Recently used files', ':Telescope oldfiles <CR>'),
      button('t', '  Find text', ':Telescope live_grep <CR>'),
      button('l', '  Lazy', ':Lazy<CR>'), -- New Lazy button
      button('c', '  Configuration', ':e $MYVIMRC <CR>'),
      button('q', '  Quit Neovim', ':qa<CR>'),
    }

    dashboard.section.footer.opts.hl = 'Type'
    dashboard.section.header.opts.hl = 'Include'
    dashboard.section.buttons.opts.hl = 'Keyword'
    dashboard.opts.opts.noautocmd = true
    dashboard.opts.layout = {
      { type = 'padding', val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) } },
      dashboard.section.header,
      { type = 'padding', val = 5 },
      dashboard.section.buttons,
      { type = 'padding', val = 3 },
      dashboard.section.footer,
    }

    alpha.setup(dashboard.opts)

    vim.g.dashboard_preview_command = 'chafa --passthrough tmux -f symbols -s 60x60 -c full --fg-only --symbols braille --clear'
    vim.g.dashboard_preview_file = home .. '/.config/nvim/static/apple.gif'
    vim.g.dashboard_preview_file_height = 24
    vim.g.dashboard_preview_file_width = 64
  end,
}
