-- General mappings
require('plugins')

require('colorscheme')
require('keymappings')
require('settings')
require('utils')

-- LSP
require('lsp')
require('lsp.omnisharp')
require('lsp.sumneko')
require('lsp.rustls')
require('lsp.lua-ls')
require('lsp.bash-ls')
require('lsp.js-ts-ls')


require('lsp.python-ls')
require('lsp.yaml-ls')
require('lsp.json-ls')

-- Plugins
require('treesitter')
require('fugitive')
require('startify')
require('_telescope')
require('illuminate')
require('indentline')
require('_compe')
