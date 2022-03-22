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
vim.o.timeoutlen = 500
vim.o.showcmd = true
vim.o.showtabline = 2
vim.o.termguicolors = true
vim.o.hidden = true
vim.o.signcolumn = "yes:1"
vim.o.list = true
vim.o.listchars = "tab: -,trail:·"
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.wrap = false
vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.user_emmet_leader_key = "<C-Q>"
vim.g.vimwiki_list = { {} }
-- vim.g.vimwiki_list = { { path = "~/Documents/Vimwiki" , syntax = "markdown", ext = "md", path_html = "~/.local/share/nvim/site/pack/packer/start/vimwiki/autoload/vimwiki/default.tpl", custom_wiki2html = "~/.local/share/nvim/site/pack/packer/start/vimwiki/autoload/vimwiki/custom_wiki2html.sh"} }
vim.g.vimwiki_list = { { path = "~/Documents/Vimwiki" , syntax = "markdown", ext = "md"} }
vim.cmd([[command! MakeTags !ctags -R .]])
vim.cmd([[command! Make make %< ]])
vim.cmd([[command! Node !node % ]])
vim.cmd([[command! Gcc !gcc -lm -o %< %]])
vim.cmd([[command! Gccr !gcc -lm -o %< % && time ./%<]])
vim.cmd([[command! Gcp !g++ -lm -o %< %]])
vim.cmd([[command! Gcpr !g++ -lm -o %< % && time ./%<]])
vim.cmd([[command! CopyBuffPath let @+ = expand('%:p')]])
vim.cmd([[command! Source source ~/.config/nvim/init.lua]])
vim.cmd([[autocmd BufEnter * silent! lcd %:p:h]])
vim.cmd([[autocmd CmdLineEnter : set ignorecase nosmartcase]])
vim.cmd([[autocmd CmdLineEnter : set ignorecase nosmartcase]])
vim.cmd([[autocmd FileType javascript,css,c,cpp,json nmap <silent> <leader>; <Plug>(cosco-commaOrSemiColon)]])
vim.cmd([[autocmd BufEnter * set fo-=o fo-=r fo-=c]])
-- vim.cmd([[autocmd BufWinEnter * normal zR]])
vim.cmd([[autocmd FileType kivy setlocal commentstring=#\ %s]])
vim.cmd( [[autocmd BufRead,BufNewFile *.c,*.cpp setlocal shiftwidth=8 tabstop=8 softtabstop=8 cc=81 cindent noet]])

---------------------------- Keybinds ---------------------------------------------------------

local options = { noremap = true, silent = true }

---- Leader
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", options)
vim.g.mapleader = " "

---- Esc
vim.api.nvim_set_keymap("i", "jj", "<Esc>", options)

---- Esc in terminal mode
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", options)
vim.api.nvim_set_keymap("t", "jj", "<C-\\><C-n>", options)

---- ToggleTerm
vim.api.nvim_set_keymap("n", "<leader>tt", ":ToggleTerm size=10<CR>", options)

---- Toggle SymbolsOutline
vim.api.nvim_set_keymap("n", "<F8>", ":SymbolsOutline<CR>", options)

---- Change directory
vim.api.nvim_set_keymap("n", "<leader>ch", ":cd ~/", options)
vim.api.nvim_set_keymap("n", "<leader>cc", ":cd ", options)

---- Open current file in chrome
vim.api.nvim_set_keymap("n", "<F12>", ":!google-chrome %<CR>", options)

---- Switch buffers
vim.api.nvim_set_keymap("n", "<leader>l", ":bn<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>h", ":bp<CR>", options)
vim.api.nvim_set_keymap("n", "<C-s>", "<C-^>", options)
-- vim.api.nvim_set_keymap("n", "<leader>bs", ":ls<CR>:b<Space>", options)
vim.api.nvim_set_keymap("n", "<leader>bs", ":ReachOpen buffers<CR>", options)

---- Move buffers
vim.api.nvim_set_keymap("n", "<leader>bml", ":BufferLineMoveNext<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>bmh", ":BufferLineMovePrev<CR>", options)

---- Move selected lines up or down
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", options)
vim.api.nvim_set_keymap("n", "<A-j>", ":m.+1<CR>==", options)
vim.api.nvim_set_keymap("v", "<A-k>", ":m-2<CR>gv=gv", options)
vim.api.nvim_set_keymap("v", "<A-j>", ":m'>+<CR>gv=gv", options)

---- Find & rename word under cursor
vim.api.nvim_set_keymap("n", "<leader>rn", "* :%s//", options)

---- Delete all buffers except current
vim.api.nvim_set_keymap("n", "<leader>bd", ":%bd|e#|bd#<CR>", options)

---- Remove highlights after search
vim.api.nvim_set_keymap("n", "<leader>/", ":noh<CR>", options)

---- Yank all & copy all
vim.api.nvim_set_keymap("n", "<leader>ya", "ggVGy", options)
vim.api.nvim_set_keymap("n", "<leader>aa", "ggVG\"+y", options)

---- Load scheme
vim.api.nvim_set_keymap("n",";html",":-1read $HOME/.config/nvim/.skeleton.html<CR>7jwf>a",options)
vim.api.nvim_set_keymap("n",";ct",":-1read $HOME/.config/nvim/.skeleton.c<CR>4jo", options)
vim.api.nvim_set_keymap( "n", ";cpt", ":-1read $HOME/.config/nvim/.skeleton.cpp<CR>5jo", options)

---- Nvimtree
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeFocus<CR>", options)

---- Better window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", options)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", options)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", options)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", options)

---- Indent in visual mode
vim.api.nvim_set_keymap("v", "<", "<gv", options)
vim.api.nvim_set_keymap("v", ">", ">gv", options)

---- Indent whole file
vim.api.nvim_set_keymap('n', '<leader>f', 'gg=G<C-o>zz', options)

---- Autoclose brackets
vim.api.nvim_set_keymap("i", "(", "()<Left>", options)
vim.api.nvim_set_keymap("i", "(<CR>", "(<CR>)<Esc>ko", options)
vim.api.nvim_set_keymap("i", "[", "[]<Left>", options)
vim.api.nvim_set_keymap("i", "[<CR>", "[<CR>]<Esc>ko", options)
vim.api.nvim_set_keymap("i", "{", "{}<Left>", options)
vim.api.nvim_set_keymap("i", "{<CR>", "{<CR>}<Esc>ko", options)
vim.api.nvim_set_keymap("i", "'", "''<Left>", options)
vim.api.nvim_set_keymap("i", "\"", "\"\"<Left>", options)

---- Open telescope
vim.api.nvim_set_keymap( "n", "<leader>tf", "<Cmd>lua require('telescope.builtin').find_files()<CR>", options)
vim.api.nvim_set_keymap( "n", "<leader>tl", "<Cmd>lua require('telescope.builtin').live_grep()<CR>", options)
vim.api.nvim_set_keymap( "n", "<leader>ts", "<Cmd>lua require('telescope.builtin').grep_string()<CR>", options)
vim.api.nvim_set_keymap( "n", "<leader>tcb", "<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", options)
vim.api.nvim_set_keymap( "n", "<leader>tb", "<Cmd>lua require('telescope.builtin').buffers()<CR>", options)

---------------------------- Colorscheme ---------------------------------------------

vim.cmd([[colorscheme gruvbox]])

---------------------------- Plugins -------------------------------------------------

require("plugins")
require("nvCmp")
require("nvimLsp")
require("nvim-tree").setup()
require("bufferLine")
require("luaLine")
require("gitsigns").setup()
require("colorizer").setup()
require("telescope").load_extension("fzf")
require("telescope").setup({ defaults = { sorting_strategy = "ascending" } })
require("neoscroll").setup()
require("luasnip.loaders.from_vscode").load()
require("treeSitter")
require("lightSpeed")
require("toggleterm").setup()
require("reach").setup()
