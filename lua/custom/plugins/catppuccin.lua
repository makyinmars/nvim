return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,

    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'catppuccin-mocha', 'catppuccin-frappe', or 'catppuccin-latte'.
      vim.cmd.colorscheme 'catppuccin-mocha'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
    opts = {
      no_italic = true,
      term_colors = true,
      transparent_background = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = '#000000',
          mantle = '#000000',
          crust = '#000000',
        },
      },
      integrations = {
        telescope = {
          enabled = true,
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
    },
  },
}
