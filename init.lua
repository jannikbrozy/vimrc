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
require('lsp.rustls')
require('lsp.bash-ls')
require('lsp.js-ts-ls')
require('lsp.sumneko')

require('lsp.python-ls')
require('lsp.yaml-ls')
require('lsp.json-ls')
require('lsp.angularls')

require('nlspsettings').setup()

require('treesitter')
require('fugitive')
require('_telescope')
require('illuminate')
require('_compe')
require('_galaxyline')

