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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/jannik/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jannik/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jannik/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jannik/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jannik/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  Apprentice = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/Apprentice"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  ["cyclist.vim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/cyclist.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["gruvbuddy.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/gruvbuddy.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
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
  nordbuddy = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nordbuddy"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
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
  ["nvim-terminal.lua"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-terminal.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim.lua"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/nvim.lua"
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
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim"
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
  ["vim-characterize"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-characterize"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
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
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/vim-prettier"
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
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/home/jannik/.local/share/nvim/site/pack/packer/start/zephyr-nvim"
  }
}

time("Defining packer_plugins", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
