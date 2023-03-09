local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'akinsho/bufferline.nvim'
  use 'akinsho/toggleterm.nvim'
  use 'cdelledonne/vim-cmake'
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
  use 'mfussenegger/nvim-dap'
  use { "microsoft/vscode-js-debug", opt = true, run = "npm install --legacy-peer-deps && npm run compile" }
  use 'morhetz/gruvbox'
  use 'mxsdev/nvim-dap-vscode-js'
  use 'neovim/nvim-lspconfig'
  use 'norcalli/nvim-colorizer.lua'
  use {'nvim-telescope/telescope.nvim',  requires = {'nvim-lua/plenary.nvim'}}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'nvim-telescope/telescope-dap.nvim' }
  use {'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'}
  use 'nvim-lualine/lualine.nvim'
  use 'rafamadriz/friendly-snippets'
  use 'rcarriga/nvim-dap-ui'
  use 'simrat39/symbols-outline.nvim'
  use 'theHamsta/nvim-dap-virtual-text'
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
