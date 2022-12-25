-- https://github.com/shvedes/dotfiles

require('settings')                         -- main vim / neovim settings
require('keymaps')                          -- custom keymaps / shortcuts
require('plugins')                          -- list of plugins

require('configs.catppuccin')               -- theme settings
require('configs.bufferline')               -- buffers    
require('configs.highlight')                -- highlight colors
require('configs.nvim-tree')                -- file explorer
require('configs.gitsigns')                 -- git status
require('configs.gruvbox')                  -- gruvbox theme 
require('configs.lualine')                  -- catppuccin theme for lualine
require('configs.comment')                  -- comment selected code by g+c
require('configs.lualine')                  -- vim-airline written on lua
require('configs.alpha')                    -- startup splashscreen
require('configs.cmp')                      -- autocompletion
