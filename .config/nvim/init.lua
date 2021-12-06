---------------------------- Global Settings -------------------------------------------------

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
vim.o.hidden = true
vim.cmd([[command! MakeTags !ctags -R .]])

---------------------------- Keybinds ---------------------------------------------------------

----leader
local options = { noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', options)
vim.g.mapleader= ' '

----Esc
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', options)

----switch tabs
vim.api.nvim_set_keymap('n', '<leader>j', 'gT', options)
vim.api.nvim_set_keymap('n', '<leader>k', 'gt', options)

----load html scheme
vim.api.nvim_set_keymap('n', '<leader>html', ':-1read $HOME/.config/nvim/.skeleton.html<CR>4jwf>a', options)

----toggle terminal (<number><C-t> will open specific terminal)
vim.api.nvim_set_keymap('n', '<C-t>', '<Cmd>exe v:count1 . \"ToggleTerm\" \"direction=horizontal\"<CR>', options)
vim.api.nvim_set_keymap('n', '<C-A-t>', '<Cmd>exe v:count1 . \"ToggleTerm\" \"direction=vertical\" \"size=40\"<CR>', options)
vim.api.nvim_set_keymap('i', '<C-t>', '<Esc><Cm>exe v:count1 . \"ToggleTerm\"<CR>', options)
vim.api.nvim_set_keymap('t', '<C-t>', '<C-\\><C-n> :ToggleTerm<CR>', options)
vim.api.nvim_set_keymap('', '<leader><C-t>', ':ToggleTermToggleAll<CR>', options)
vim.api.nvim_set_keymap('t', ';<C-t>', '<C-\\><C-n>:ToggleTermToggleAll<CR>', options)

----Esc in terminal mode
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', options)

----Nvimtree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFocus<CR>', options)

----better window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', options)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', options)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', options)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', options)
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-w>h', options)
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-w>j', options)
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-w>k', options)
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', options)

----indent in visual mode
vim.api.nvim_set_keymap('v', '<', '<gv', options)
vim.api.nvim_set_keymap('v', '>', '>gv', options)

----autoclose brackets
vim.api.nvim_set_keymap('i', '(', '()<Left>', options)
vim.api.nvim_set_keymap('i', '[', '[]<Left>', options)
vim.api.nvim_set_keymap('i', '{', '{}<Left>', options)
vim.api.nvim_set_keymap('i', '\'', '\'\'<Left>', options)
vim.api.nvim_set_keymap('i', '\"', '\"\"<Left>', options)

----indent whole file
vim.api.nvim_set_keymap('n', '<leader>f', 'gg=G<C-o>', options)

----open telescope
vim.api.nvim_set_keymap('n', '<leader>tf', '<Cmd>lua require(\'telescope.builtin\').find_files()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>tl', '<Cmd>lua require(\'telescope.builtin\').live_grep()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>ts', '<Cmd>lua require(\'telescope.builtin\').grep_string()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>tb', '<Cmd>lua require(\'telescope.builtin\').current_buffer_fuzzy_find()<CR>', options)

---------------------------- Colorscheme ---------------------------------------------

vim.cmd([[colorscheme gruvbox]])

---------------------------- Plugins -------------------------------------------------

require('plugins')
require('nv-cmp.init')
require('nvim-lsp.init')
require('nvim-tree').setup() 
require('gitsigns').setup()
require('lualine').setup({options = {theme = 'gruvbox_dark'}})
require('toggleterm').setup()
require('telescope').setup({defaults = {sorting_strategy = "ascending"}})
require('telescope').load_extension('fzf')
