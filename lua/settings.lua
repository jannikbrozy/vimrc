local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'

vim.cmd('set iskeyword+=-')                  --treat dash separated words as a word text object"
-- local to buffer options ----
utils.opt('b', 'tabstop', indent)
utils.opt('b', 'softtabstop', indent)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'expandtab', true)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'swapfile', false)

---- local to window options ----
utils.opt('w', 'signcolumn', 'yes')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('w', 'wrap', false)
utils.opt('w', 'list', true)

---- global options ----
utils.opt('o', 'cmdheight', 2)
utils.opt('o', 'hlsearch', false)
utils.opt('o', 'incsearch', true)
utils.opt('o', 'hidden', true)
utils.opt('o', 'errorbells', false)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('o', 'backup', false)
utils.opt('o', 'undofile', true)
utils.opt('o', 'scrolloff', 8)
utils.opt('o', 'sidescrolloff', 8 )
utils.opt('o', 'joinspaces', false)
utils.opt('o', 'showmode', false)
utils.opt('o', 'background', 'dark')
utils.opt('o', 'guicursor', '')
utils.opt('o', 'updatetime', 300)

vim.cmd('set shortmess+=c')                 --Don't pass messages to |ins-completion-menu|.
vim.cmd('set clipboard+=unnamedplus')                 --Don't pass messages to |ins-completion-menu|.
vim.cmd('set omnifunc=v:lua.vim.lsp.omnifunc')                 --Don't pass messages to |ins-completion-menu|.
vim.cmd('set undodir=~/.local/share/nvim/undodir')
vim.cmd('set inccommand=split') -- Make substitution work in realtime

vim.g.indent_blankline_show_end_of_line = 'v:true'
vim.g.indent_blankline_use_treesitter = 'v:true'

-- vim.g.indent_blankline_space_char="·"
vim.o.completeopt = "menuone,noinsert,noselect"
