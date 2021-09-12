vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-m>', '<NOP>', { noremap = true, silent = false })

vim.g.mapleader = ' '

local jmaps = require('jmaps')
jmaps.set_settings("/home/jannik/.config/nvim/mappings.json")
