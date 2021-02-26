lua << EOF

local dap = require('dap')
dap.adapters.netcoredbg = {
    type = 'executable',
    name = 'csharp'
}

EOF
