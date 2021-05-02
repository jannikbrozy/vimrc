-- General mappings
require('plugins')
require('settings')

require('keymappings')
require('colorscheme')
require('utils')

require('dap')
require('dap.cs')

-- LSP
require('lsp')
require('lsp.omnisharp')
require('lsp-bulb')
require('lsp.sumneko')
require('lsp.rustls')
require('lsp.lua-ls')
require('lsp.bash-ls')
require('lsp.js-ts-ls')

require('lsp.python-ls')
require('lsp.yaml-ls')
require('lsp.json-ls')
require('lsp.angularls')

-- Plugins
require('treesitter')

require('fugitive')
-- require('startify')
require('_telescope')
require('illuminate')
require('_compe')
require('_galaxyline')

