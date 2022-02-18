local fn = vim.fn

--local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--[[
if fn.empty(fn.glob(install_path)) > 0 then
packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
--]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-commentary'
  use 'morhetz/gruvbox'
  -- use "akinsho/toggleterm.nvim"
  use {'kyazdani42/nvim-tree.lua',requires = {'kyazdani42/nvim-web-devicons'}}
  use "tpope/vim-ragtag"
  use "norcalli/nvim-colorizer.lua"
  use "tweekmonster/startuptime.vim"
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  use 'christoomey/vim-system-copy'
  use 'tpope/vim-surround'
  use 'christoomey/vim-titlecase'
  use 'neovim/nvim-lspconfig'
  use 'tpope/vim-fugitive'
  use 'mattn/emmet-vim'
  use {'hrsh7th/nvim-cmp', requires = {'hrsh7th/cmp-vsnip','hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/vim-vsnip'}}
  use 'lukas-reineke/indent-blankline.nvim'
  use {'nvim-telescope/telescope.nvim',  requires = {'nvim-lua/plenary.nvim'}}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-lualine/lualine.nvim' 
  use 'davidgranstrom/nvim-markdown-preview'
  use { "untitled-ai/jupyter_ascending.vim" }
end)
