local fn = vim.fn

--local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--[[
if fn.empty(fn.glob(install_path)) > 0 then
packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
--]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use "akinsho/bufferline.nvim"
  use 'christoomey/vim-system-copy'
  use 'christoomey/vim-titlecase'
  use 'davidgranstrom/nvim-markdown-preview'
  use {'dsznajder/vscode-es7-javascript-react-snippets',run = 'yarn install --frozen-lockfile && yarn compile'}
  use {'hrsh7th/nvim-cmp', requires = {'hrsh7th/cmp-vsnip','hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/vim-vsnip'}}
  use 'junegunn/goyo.vim'
  use {'kyazdani42/nvim-tree.lua',requires = {'kyazdani42/nvim-web-devicons'}}
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  use 'lukas-reineke/indent-blankline.nvim'
  use 'mattn/emmet-vim'
  use 'morhetz/gruvbox'
  use 'neovim/nvim-lspconfig'
  use 'norcalli/nvim-colorizer.lua'
  use {'nvim-telescope/telescope.nvim',  requires = {'nvim-lua/plenary.nvim'}}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-lualine/lualine.nvim' 
  use 'rafamadriz/friendly-snippets'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use 'tpope/vim-ragtag'
  use 'tpope/vim-surround'
  use 'tweekmonster/startuptime.vim'
  use 'untitled-ai/jupyter_ascending.vim'
end)
