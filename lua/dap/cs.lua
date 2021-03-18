local dap = require('dap')
local cwd = vim.fn.getcwd();
local pid = vim.fn.getpid()

dap.adapters.cs = {
    type = 'executable';
    command = '/home/jannik/.omnisharp/netcoredbg/netcoredbg';
    args = {'--interpreter=vscode' };
}

dap.configurations.cs = {
  {
      type = 'cs';
      request = 'launch';
      name = "lauch .NET Core 3.1";
      program = cwd .. "/bin/Debug/netcoreapp3.1/test.dll";
      stopAtEntry = true;
      args = {};
      cwd = cwd;
  },
  {
      type = 'cs';
      request = 'launch';
      name = "lauch .NET 5.0";
      program = cwd .. "/bin/Debug/NET5.0/test.dll";
      stopAtEntry = true;
      args = {};
      cwd = cwd;
  }
}
