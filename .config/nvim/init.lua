---------------------------- Keybinds --------------------------------
local options = { noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', options)
vim.g.mapleader= ' '

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', options)
vim.api.nvim_set_keymap('n', '<leader>mv', ':mkview<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>lv', ':loadview<CR>', options)

vim.api.nvim_set_keymap('n', '<leader>j', 'gT', options)
vim.api.nvim_set_keymap('n', '<leader>k', 'gt', options)

vim.api.nvim_set_keymap('n', '<leader>html', ':-1read $HOME/.config/nvim/.skeleton.html<CR>4jwf>a', options)

vim.api.nvim_set_keymap('', '<C-t>', ':cd %:p:h<CR>:vs +te<CR>', options)
vim.api.nvim_set_keymap('', '<leader><C-t>', ':cd %:p:h<CR>:sp +te<CR>', options)

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', options)

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFocus<CR>', options)

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', options)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', options)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', options)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', options)


vim.api.nvim_set_keymap('v', '<', '<gv', options)
vim.api.nvim_set_keymap('v', '>', '>gv', options)

vim.api.nvim_set_keymap('n', '<leader>f', 'gg=G<C-o>', options)

vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>', options)

---------------------------- Colorscheme --------------------------------

vim.cmd[[colorscheme gruvbox]]

---------------------------- Global Settings --------------------------------

vim.o.cursorline = true
vim.o.mouse = "a"
vim.o.relativenumber = true
vim.o.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.showcmd = true
vim.o.termguicolors = true

---------------------------- Plugins --------------------------------

require('plugins')
require('nv-cmp.init')
require('nvim-lsp.init')
require('nvim-tree').setup() 
require('gitsigns').setup()
require('nvim-autopairs').setup()
require('lualine').setup()
