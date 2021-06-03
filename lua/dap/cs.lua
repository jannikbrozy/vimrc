local dap = require('dap')
local pwd = vim.fn.getcwd()
local pid = vim.fn.getpid()

dap.adapters.cs = {
    type = "executable";
    cwd = pwd;
    command  = '/usr/local/netcoredbg'; 
    args = {
    '--interpreter=vscode'
    };
}

dap.configurations.cs = {
  {
      name = "netcoredbg";
      type = "cs";
      request = "launch";
      program = "${workspaceFolder}/bin/Debug/net5.0/test.dll";
      args = {};
      stopAtEntry = true;
      cwd = pwd;
      env = {};
  }
}
