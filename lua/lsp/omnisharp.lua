local config = require'lspconfig'
local pid = vim.fn.getpid()

local omnisharp_dir = "/home/jannik/.omnisharp_bin/run"

config.omnisharp.setup{
	cmd = { omnisharp_dir, "--languageserver", "--hostPID", tostring(pid)}
}
