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
  use {'kyazdani42/nvim-tree.lua',requires = {'kyazdani42/nvim-web-devicons'},config = require'nvim-tree'.setup {}}
  use {'morhetz/gruvbox', config = vim.cmd[[colorscheme gruvbox]]}
  use {'famiu/feline.nvim', config = require('feline').setup()}
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'},config =require('gitsigns').setup()}
  use 'christoomey/vim-system-copy'
  use 'tpope/vim-surround'

end)
