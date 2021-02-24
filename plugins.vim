" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'tpope/vim-fugitive'

if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'haorenW1025/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/lsp-status.nvim'

Plug 'steelsojka/completion-buffers'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

Plug 'Yggdroot/indentLine'

" Plug 'ntpeters/vim-better-whitespace'
Plug 'easymotion/vim-easymotion'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-surround'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mbbill/undotree'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'mhinz/vim-startify'

Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'cdelledonne/vim-cmake'

Plug 'mfussenegger/nvim-dap'
Plug 'ryanoasis/vim-devicons'
Plug 'aditya-azad/candle-grey'
Plug 'andreypopp/vim-colors-plain'
Plug 'axvr/photon.vim'
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'cocopon/iceberg.vim'
Plug 'romainl/Apprentice'
Plug 'anott03/nvim-lspinstall'
Plug 'chrisbra/sudoedit.vim'
Plug 'albertoCaroM/completion-tmux'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'bryall/contextprint.nvim'
Plug 'tjdevries/cyclist.vim'
Plug 'norcalli/snippets.nvim'
call plug#end()
