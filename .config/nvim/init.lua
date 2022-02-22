---------------------------- Global Settings -------------------------------------------------

vim.o.cursorline = true
vim.o.mouse = "a"
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.number = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.g.user_emmet_leader_key = '<C-Q>'
vim.o.timeoutlen = 500
vim.o.showcmd = true
-- vim.o.showtabline = 2
vim.o.termguicolors = true
vim.o.hidden = true
vim.g.nvim_tree_respect_buf_cwd = 1
vim.cmd([[autocmd BufWinLeave *.* mkview!]])
-- vim.cmd([[autocmd BufWinEnter *.* loadview]])
vim.cmd([[command! MakeTags !ctags -R .]])
vim.cmd([[command! Make make %< ]])
vim.cmd([[command! Gcc !gcc -lm -o %< %]])
vim.cmd([[command! CopyBuffPath let @+ = expand('%:p')]])
vim.cmd([[autocmd BufEnter * silent! lcd %:p:h]])
vim.cmd([[autocmd CmdLineEnter : set ignorecase nosmartcase]])
vim.cmd([[autocmd CmdLineLeave : set noignorecase smartcase]])
vim.cmd([[autocmd BufEnter * set fo-=o fo-=r fo-=c]])
vim.cmd([[autocmd FileType kivy setlocal commentstring=#\ %s]])
vim.cmd([[autocmd BufRead,BufNewFile *.c setlocal shiftwidth=8 tabstop=8 softtabstop=8 cc=81 cindent noet]])

---------------------------- Keybinds ---------------------------------------------------------

local options = { noremap = true, silent = true}

----leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', options)
vim.g.mapleader= ' '

----Esc
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', options)

-- change directory
vim.api.nvim_set_keymap('n', '<leader>ch', ':cd ~/', options)
vim.api.nvim_set_keymap('n', '<leader>cc', ':cd ', options)

----open current file in chrome
vim.api.nvim_set_keymap('n', '<F12>', ':!google-chrome %<CR>', options)

-- switch buffers
vim.api.nvim_set_keymap('n', '<leader>l', ':BufferLineCycleNext<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>h', ':BufferLineCyclePrev<CR>', options)
vim.api.nvim_set_keymap('n', '1<leader>', '<Cmd>BufferLineGoToBuffer 1<CR>', options)
vim.api.nvim_set_keymap('n', '2<leader>', '<Cmd>BufferLineGoToBuffer 2<CR>', options)
vim.api.nvim_set_keymap('n', '3<leader>', '<Cmd>BufferLineGoToBuffer 3<CR>', options)
vim.api.nvim_set_keymap('n', '4<leader>', '<Cmd>BufferLineGoToBuffer 4<CR>', options)
vim.api.nvim_set_keymap('n', '5<leader>', '<Cmd>BufferLineGoToBuffer 5<CR>', options)

-- move buffers
vim.api.nvim_set_keymap('n', '<leader>bml', ':BufferLineMoveNext<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>bmh', ':BufferLineMovePrev<CR>', options)

----move selected lines up or down
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', options)
vim.api.nvim_set_keymap('n', '<A-j>', ':m.+1<CR>==', options)
vim.api.nvim_set_keymap('v', '<A-k>', ':m-2<CR>gv=gv', options)
vim.api.nvim_set_keymap('v', '<A-j>', ':m\'>+<CR>gv=gv', options)

----find & rename word under cursor
vim.api.nvim_set_keymap('n', '<leader>rn', '* :%s//', options)

-- delete all buffers except current
vim.api.nvim_set_keymap('n', '<leader>bd', ':%bd|e#|bd#<CR>', options)

-- remove highlights after search
vim.api.nvim_set_keymap('n', '<leader>/', ':noh<CR>', options)

----load scheme
vim.api.nvim_set_keymap('n', ';html', ':-1read $HOME/.config/nvim/.skeleton.html<CR>7jwf>a', options)
vim.api.nvim_set_keymap('n', ';ct', ':-1read $HOME/.config/nvim/.skeleton.c<CR>3jo', options)

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
vim.api.nvim_set_keymap('i', '(<CR>', '(<CR>)<Esc>ko', options)
vim.api.nvim_set_keymap('i', '[', '[]<Left>', options)
vim.api.nvim_set_keymap('i', '[<CR>', '[<CR>]<Esc>ko', options)
vim.api.nvim_set_keymap('i', '{', '{}<Left>', options)
vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<Esc>ko', options)
vim.api.nvim_set_keymap('i', '\'', '\'\'<Left>', options)
vim.api.nvim_set_keymap('i', '\"', '\"\"<Left>', options)

----indent whole file
vim.api.nvim_set_keymap('n', '<leader>f', 'gg=G<C-o>', options)

----open telescope
vim.api.nvim_set_keymap('n', '<leader>tf', '<Cmd>lua require(\'telescope.builtin\').find_files()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>tl', '<Cmd>lua require(\'telescope.builtin\').live_grep()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>ts', '<Cmd>lua require(\'telescope.builtin\').grep_string()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>tcb', '<Cmd>lua require(\'telescope.builtin\').current_buffer_fuzzy_find()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>tb', '<Cmd>lua require(\'telescope.builtin\').buffers()<CR>', options)

---------------------------- Colorscheme ---------------------------------------------

vim.cmd([[colorscheme gruvbox]])

---------------------------- Plugins -------------------------------------------------

require('plugins')
require('nvCmp')
require('nvimLsp')
require('nvim-tree').setup()
require('bufferLine')
require('luaLine')
require('gitsigns').setup()
require('colorizer').setup()
require('telescope').load_extension('fzf')
require('telescope').setup({defaults = {sorting_strategy = "ascending"}})
