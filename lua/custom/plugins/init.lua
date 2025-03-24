-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'kylechui/nvim-surround',
    version = '^3.0.0', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
    keys = {
      {
        '<leader>Xx',
        '<cmd>Trouble diagnostics toggle<CR>',
        desc = 'Diagnostic (Trouble)',
      },
      {
        '<leader>Xt',
        '<cmd>Trouble todo<CR>',
        desc = 'Todo (Trouble)',
      },
    },
  },
  { 'folke/ts-comments.nvim', opts = {}, event = 'VeryLazy', enabled = vim.fn.has 'nvim-0.10.0' == 1 },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' },
          },
          mode = 'buffers',
          separator_style = 'thin',
          always_show_bufferline = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
          color_icons = true,
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'neo-tree',
              highlight = 'Directory',
              separator = true,
            },
          },
        },
      }
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        ---@diagnostic disable-next-line: missing-fields
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = '', -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      }

      vim.cmd.colorscheme 'gruvbox'
    end,
  },
  { 'wakatime/vim-wakatime', lazy = false },
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000,
  --   config = function()
  --     ---@diagnostic disable-next-line: missing-fields
  --     require('catppuccin').setup {
  --       styles = {
  --         comments = {},
  --         conditionals = {},
  --         loops = {},
  --         functions = {},
  --         keywords = {},
  --         strings = {},
  --         variables = {},
  --         numbers = {},
  --         booleans = {},
  --         properties = {},
  --         types = {},
  --         operators = {},
  --       },
  --     }
  --
  --     vim.cmd.colorscheme 'catppuccin-mocha'
  --   end,
  -- },
}
