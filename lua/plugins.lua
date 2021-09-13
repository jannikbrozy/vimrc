local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup(function()
  use '/home/jannik/Projects/jmaps'

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  use 'glepnir/dashboard-nvim'
  use 'b0o/mapx.nvim'

  use "folke/lua-dev.nvim"
  --markdown
  use 'ellisonleao/glow.nvim'

  --treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  use "steelsojka/pears.nvim"

  use {
      "blackCauldron7/surround.nvim",
      config = function()
          require"surround".setup { mappings_style = "surround" }
      end
  }

  use 'junegunn/fzf.vim'
  -- For Packer
  use 'EdenEast/nightfox.nvim'
  use 'nvim-telescope/telescope-packer.nvim'

  --explorer
  use {
      'kyazdani42/nvim-tree.lua'
  }
  --telescope
  use {
      'nvim-telescope/telescope-frecency.nvim',
      config = function()
          require('telescope').load_extension('frecency')
      end,
      requires = { 'tami5/sqlite.lua' }
  }
  use {
      '/home/jannik/Projects/telescope-project.nvim'
  }

  use 'nvim-telescope/telescope-fzy-native.nvim'
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-lua/popup.nvim'

  --note taking
  use "oberblastmeister/neuron.nvim"
  use 'jbyuki/nabla.nvim'

  --lsp
  use 'vijaymarupudi/nvim-fzf'
  use 'neovim/nvim-lspconfig'
  use 'RishabhRD/popfix'
  use 'RishabhRD/nvim-lsputils'
  use 'glepnir/lspsaga.nvim'

  use {
      'williamboman/nvim-lsp-installer',
  }

  --statusline
  use { 
      'Famiu/feline.nvim',
  }

  use 'crispgm/nvim-tabline'

  --completion
  use {
      "hrsh7th/nvim-cmp",
      requires = {
          "L3MON4D3/LuaSnip",
          "saadparwaiz1/cmp_luasnip",
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-nvim-lsp",
          "hrsh7th/cmp-path",
          "hrsh7th/cmp-nvim-lua",
      },
  }

  use {
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }

  use 'AckslD/nvim-whichkey-setup.lua'
  use 'liuchengxu/vim-which-key'

  --tools
  use 'famiu/bufdelete.nvim'

  --icons
  use 'kyazdani42/nvim-web-devicons'
end)
