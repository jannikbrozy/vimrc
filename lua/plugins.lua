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
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  use 'norcalli/nvim.lua'

  -- LSP

  use { 'neovim/nvim-lspconfig' }

  use { 'ojroques/nvim-lspfuzzy' }

  use { 'nvim-lua/lsp-status.nvim' }

  use { 'anott03/nvim-lspinstall' }

  use { 'hrsh7th/nvim-compe' }

  use { 'kristijanhusak/vim-dadbod-completion' }

  use { 'kosayoda/nvim-lightbulb' }

  use { 'prettier/vim-prettier' }

  -- SNIPPETS 

  use { 'norcalli/snippets.nvim' }

  -- THEMES & DESIGN

  use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }

  use 'norcalli/nvim-colorizer.lua'

  use 'norcalli/nvim-terminal.lua'  

  use 'tjdevries/colorbuddy.vim'   

  use 'tjdevries/gruvbuddy.nvim'   

  use 'gruvbox-community/gruvbox'   

  use 'glepnir/galaxyline.nvim'

  use { 'tpope/vim-surround' }

  use { 'romainl/Apprentice' } -- best theme

  -- use { 'tjdevries/cyclist.vim' }
  use { 'RRethy/vim-illuminate' }

  use 'tjdevries/cyclist.vim'

  use 'godlygeek/tabular'        -- Quickly align text by pattern

  use 'tpope/vim-commentary'     -- Easily comment out lines or objects

  use 'tpope/vim-repeat'         -- Repeat actions better

  use 'tpope/vim-abolish'        -- Cool things with words!
  
  use 'tpope/vim-characterize'

  use 'tpope/vim-dispatch'

  use 'AndrewRadev/splitjoin.vim'

  use 'AndrewRadev/sideways.vim' -- Easy sideways movement

  use 'kyazdani42/nvim-web-devicons'

  use 'kyazdani42/nvim-tree.lua'

  use { 'romgrk/barbar.nvim' }

  use { 'maaslalani/nordbuddy' }

  use '~/Projects/zephyr-nvim/'

  -- STARTIFY
  use { 'mhinz/vim-startify' }

  -- GIT

  use { 'tpope/vim-fugitive' }

  -- TELESCOPE

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-media-files.nvim'}}
  }

  use { 'nvim-telescope/telescope-fzy-native.nvim', run = 'make' }

  use { 'nvim-telescope/telescope-fzf-writer.nvim' }

  use { 'nvim-telescope/telescope-packer.nvim' }

  use { 'nvim-telescope/telescope-github.nvim' }

  use { 'nvim-telescope/telescope-symbols.nvim' }

  use { 'alexaandru/nvim-lspupdate' }

  -- TREESITTER

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'nvim-treesitter/nvim-treesitter-refactor' }

  use {"windwp/nvim-ts-autotag"}

  use { 'nvim-treesitter/completion-treesitter' }

  use {"windwp/nvim-autopairs"}

  use { 'p00f/nvim-ts-rainbow' }

  use { 'nvim-lua/lsp_extensions.nvim' }

  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- NVIM-DAP
  use { "rcarriga/nvim-dap-ui" }

  use { 'mfussenegger/nvim-dap' }

  use { 'theHamsta/nvim-dap-virtual-text' }

  use { 'nvim-telescope/telescope-dap.nvim' }

end)
