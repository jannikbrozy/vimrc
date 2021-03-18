local config = require'lspconfig'
local pid = vim.fn.getpid()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local omnisharp_dir = "/home/jannik/.omnisharp_bin/run"

config.omnisharp.setup{
	cmd = { omnisharp_dir, "--languageserver", "--hostPID", tostring(pid)},
    capabilities = capabilities
}
