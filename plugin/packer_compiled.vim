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
  ["completion-treesitter"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/completion-treesitter"
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
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-lspupdate"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-lspupdate"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
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
  ["sideways.vim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/sideways.vim"
  },
  ["snippets.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/splitjoin.vim"
  },
  tabular = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope-fzf-writer.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/telescope-fzf-writer.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/telescope-github.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope-packer.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/telescope-packer.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-characterize"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-characterize"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-repeat"
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
