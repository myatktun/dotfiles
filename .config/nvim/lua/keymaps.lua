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
