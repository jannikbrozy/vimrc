local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {}    -- (optional) Customize the options passed to the server    --

    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
 end)


