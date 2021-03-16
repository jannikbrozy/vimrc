" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/jannik/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jannik/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jannik/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jannik/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jannik/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  Apprentice = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/Apprentice"
  },
  ["completion-buffers"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/completion-buffers"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["complextras.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/complextras.nvim"
  },
  ["cyclist.vim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/cyclist.vim"
  },
  indentLine = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["snippets.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-surround"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
