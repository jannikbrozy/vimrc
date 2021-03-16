--TODO figure out why this don't work
vim.fn.sign_define("LspDiagnosticsSignError", {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"})

vim.cmd('nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>')
vim.cmd('nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.declaration()<CR>')
vim.cmd('nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>')
vim.cmd('nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>')
vim.cmd('nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd('nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>')
vim.cmd('nnoremap <silent> gr    <cmd>lua require("telescope.builtin").lsp_references()<CR>')
vim.cmd('nnoremap <silent> g0    <cmd>lua require("telescope.builtin").lsp_document_symbols()<CR>')
vim.cmd('nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>')
vim.cmd('nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
vim.cmd('nnoremap <silent> <c-m> <cmd>lua require("telescope.builtin").lsp_code_actions()<CR>')
vim.cmd('nnoremap <silent> vn    <cmd>lua vim.lsp.buf.rename()<CR>')

--[[ " autoformat
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100) ]]
-- Java
-- autocmd FileType java nnoremap ca <Cmd>lua require('jdtls').code_action()<CR>

vim.cmd('nnoremap <leader>y "+y')
vim.cmd('vnoremap <leader>y "+y')
vim.cmd('nnoremap <leader>Y gg"+yG')
vim.cmd('nnoremap <leader>d "_d')

vim.cmd('vnoremap <leader>d "_d')
vim.cmd('nnoremap <leader>p "+p')
vim.cmd('nnoremap <leader>P "+P')
vim.cmd('vnoremap <leader>p "+p')
vim.cmd('vnoremap <leader>P "+P')

vim.cmd('nnoremap <leader>h :wincmd h<CR>')
vim.cmd('nnoremap <leader>j :wincmd j<CR>')
vim.cmd('nnoremap <leader>k :wincmd k<CR>')
vim.cmd('nnoremap <leader>l :wincmd l<CR>')
