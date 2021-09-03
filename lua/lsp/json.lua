require"lspconfig".jsonls.setup {
  cmd = { 'vscode-json-languageserver', '--stdio' },
  -- Set the schema so that it can be completed in settings json file.
  settings = {
    json = {
      schemas = require'nlspsettings.jsonls'.get_default_schemas()
    }
  }
}
