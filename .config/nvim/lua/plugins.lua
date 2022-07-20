-- local fn = vim.fn

-- local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--[[
if fn.empty(fn.glob(install_path)) > 0 then
packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
--]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use "akinsho/bufferline.nvim"
  use "akinsho/toggleterm.nvim"
  -- use "brymer-meneses/grammar-guard.nvim"
  -- use 'chrisbra/csv.vim'
  use 'christoomey/vim-system-copy'
  use 'christoomey/vim-titlecase'
  use 'davidgranstrom/nvim-markdown-preview'
  use {'dsznajder/vscode-es7-javascript-react-snippets',run = 'yarn install --frozen-lockfile && yarn compile'}
  use 'ggandor/lightspeed.nvim'
  use {'hrsh7th/nvim-cmp', requires = {'saadparwaiz1/cmp_luasnip','hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'L3MON4D3/LuaSnip'}}
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'junegunn/goyo.vim'
  use 'karb94/neoscroll.nvim'
  use {'kyazdani42/nvim-tree.lua',requires = {'kyazdani42/nvim-web-devicons'}}
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  use 'lfilho/cosco.vim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'mattn/emmet-vim'
  use 'morhetz/gruvbox'
  use 'neovim/nvim-lspconfig'
  use 'norcalli/nvim-colorizer.lua'
  use {'nvim-telescope/telescope.nvim',  requires = {'nvim-lua/plenary.nvim'}}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'}
  -- use 'numToStr/Comment.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'rafamadriz/friendly-snippets'
  use 'simrat39/symbols-outline.nvim'
  use 'toppair/reach.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use 'tpope/vim-ragtag'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tweekmonster/startuptime.vim'
  use 'untitled-ai/jupyter_ascending.vim'
  use 'vimwiki/vimwiki'
  use 'windwp/nvim-autopairs'
end)
