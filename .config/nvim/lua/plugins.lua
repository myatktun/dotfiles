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
  use {'kyazdani42/nvim-tree.lua',requires = {'kyazdani42/nvim-web-devicons'}}
  use 'morhetz/gruvbox'
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  use 'christoomey/vim-system-copy'
  use 'tpope/vim-surround'
  use 'neovim/nvim-lspconfig'
  use 'windwp/nvim-autopairs'
  use {'hrsh7th/nvim-cmp', requires = {'hrsh7th/vim-vsnip', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-vsnip'}}
  use 'lukas-reineke/indent-blankline.nvim'
  use {'nvim-telescope/telescope.nvim',  requires = {'nvim-lua/plenary.nvim'}}
  use 'nvim-lualine/lualine.nvim' 

end)
