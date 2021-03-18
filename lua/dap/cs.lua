local dap = require('dap')
dap.adapters.cs = {
  name = "cs";
  type = 'executable';
  command = '/home/jannik/.omnisharp/netcoredbg/netcoredbg';
  args = { '--interpreter=vscode' }
}
dap.configurations.cs = {
  {
    type = "cs",
    request = "launch",
    program = "${workspaceRoot}/bin/Debug/netcoreapp2.2/csharp.dll",
    args = {},
    stopAtEntry = true,
    cwd = "${workspaceRoot}"
  }
}
