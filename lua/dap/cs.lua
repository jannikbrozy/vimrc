local dap = require('dap')
local cwd = vim.fn.getcwd();
local pid = vim.fn.getpid()

dap.adapters.cs = {
    type = "executable";
    cwd = "/home/jannik/.omnisharp/omnisharp-vscode";
    command = "csharp";
}

dap.configurations.cs = {
  {
      type = "cs";
      request = "launch";
      program = "${workspaceFolder}/bin/Debug/netcoreapp3.1/test.dll";
      args = {};
      name = ".NET Core Launch (console)";
      stopAtEntry = true;
      console = "internalConsole";
      serverReadyAction = {
        action= "openExternally",
        pattern= "\\bNow listening on:\\s+(https?://\\S+)"
      };
  }
}
