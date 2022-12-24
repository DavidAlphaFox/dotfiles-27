-- import main settings & plugins

require('settings')                         -- main vim / neovim settings
require('keymaps')                          -- custom keymaps / shortcuts
require('plugins')                          -- list of plugins
require('nvim-highlight-colors').setup      -- highlight colors
require('configs.catppuccin')               -- theme settings
require('configs.gruvbox')                  -- gruvbox theme 
require('nvim-tree').setup()                -- file explorer
require('configs.staline')                  -- buffers
require('configs.lualine')                  -- catppuccin theme for lualine
require('Comment').setup()                  -- comment selected code by g+c
require('lualine').setup()                  -- vim-airline written on lua
require('configs.alpha')                    -- startup splashscreen
require('image').setup()                    -- image preview plugin
require('configs.cmp')                      -- autocompletion
require('cmp')                              -- autocompletion

