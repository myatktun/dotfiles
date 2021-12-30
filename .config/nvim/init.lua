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
vim.o.showtabline = 2
vim.cmd([[command! MakeTags !ctags -R .]])
vim.cmd([[autocmd BufEnter * silent! lcd %:p:h]])

---------------------------- Keybinds ---------------------------------------------------------

local options = { noremap = true, silent = true}

----leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', options)
vim.g.mapleader= ' '

----Esc
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', options)

----open current file in chrome
vim.api.nvim_set_keymap('n', '<F12>', ':!google-chrome %<CR>', options)

----switch tabs
vim.api.nvim_set_keymap('n', '<leader>h', 'gT', options)
vim.api.nvim_set_keymap('n', '<leader>l', 'gt', options)

----move selected lines up or down
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', options)
vim.api.nvim_set_keymap('n', '<A-j>', ':m.+1<CR>==', options)
vim.api.nvim_set_keymap('v', '<A-k>', ':m-2<CR>gv=gv', options)
vim.api.nvim_set_keymap('v', '<A-j>', ':m\'>+<CR>gv=gv', options)

----find & rename word under cursor
vim.api.nvim_set_keymap('n', '<leader>rn', '* :%s//', options)

----load html scheme
vim.api.nvim_set_keymap('n', ';html', ':-1read $HOME/.config/nvim/.skeleton.html<CR>4jwf>a', options)

----Nvimtree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeFindFileToggle<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFocus<CR>', options)

----better window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', options)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', options)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', options)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', options)

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
-- vim.api.nvim_set_keymap('n', '<leader>tf.', '<Cmd>lua require(\'telescope.builtin\').find_files({cwd = \'../\'})<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>tl', '<Cmd>lua require(\'telescope.builtin\').live_grep()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>ts', '<Cmd>lua require(\'telescope.builtin\').grep_string()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>tcb', '<Cmd>lua require(\'telescope.builtin\').current_buffer_fuzzy_find()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>tb', '<Cmd>lua require(\'telescope.builtin\').buffers()<CR>', options)

---------------------------- Colorscheme ---------------------------------------------

vim.cmd([[colorscheme gruvbox]])

---------------------------- Plugins -------------------------------------------------

require('plugins')
require('nv-cmp.init')
require('nvim-lsp.init')
require('nvim-tree').setup() 
require('gitsigns').setup()
require('lualine').setup({options = {theme = 'gruvbox_dark'}, tabline = {lualine_a = {'tabs'}, lualine_y = {'%L'}}})
require('telescope').setup({defaults = {sorting_strategy = "ascending"}})
require('telescope').load_extension('fzf')
