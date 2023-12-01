---------------------------- Global Settings -------------------------------------------------

vim.o.cursorline = true
vim.o.mouse = "a"
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.number = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.timeoutlen = 500
vim.o.updatetime = 350
vim.o.showcmd = true
vim.o.showtabline = 2
vim.o.termguicolors = true
vim.o.hidden = true
vim.o.signcolumn = "yes:1"
vim.o.list = true
vim.o.listchars = "tab: -,trail:·"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.wrap = false
vim.g.user_emmet_leader_key = "<C-Q>"
vim.g.vimwiki_list = { {} }
vim.g.vimwiki_list = { { path = "~/Documents/Vimwiki", syntax = "markdown", ext = "md" } }
vim.g.nvim_markdown_preview_theme = "solarized-dark"
vim.cmd([[command! MakeTags !ctags -R .]])
vim.cmd([[command! Make make %< ]])
vim.cmd([[command! Node !node % ]])
vim.cmd([[command! Gcc !time gcc -Wall -o %< %]])
vim.cmd([[command! Gccr !time gcc -Wall -o %< % && ./%<]])
vim.cmd([[command! Gcp !time g++ -Wall -o %< %]])
vim.cmd([[command! Gcpr !time g++ -Wall -o %< % && ./%<]])
vim.cmd([[command! ClangF !clang-format -i %]])
vim.cmd([[command! Mcs !mcs %]])
vim.cmd([[command! MonoRun !mcs % && mono %<.exe]])
vim.cmd([[command! Chrome !google-chrome %]])
vim.cmd([[command! CopyBuffPath let @+ = expand('%:p')]])
vim.cmd([[command! Prettier !yarn prettier $(pwd)/% --write]])

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = { '*.tfstate', '*.tfstate.backup' },
    command = [[silent! set filetype=json]],
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = { '.terraformrc', 'terraform.rc', '*.hcl' },
    command = [[silent! set filetype=hcl]],
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = { '*.tf', '*.tfvars' },
    command = [[silent! set filetype=terraform syntax=tf]],
})

vim.api.nvim_create_autocmd({ 'BufEnter' }, {
    pattern = { '*' },
    command = [[silent! lcd %:p:h]],
})

vim.cmd([[autocmd CmdLineEnter : set ignorecase nosmartcase]])
vim.cmd([[autocmd FileType javascript,css,c,cpp,json,cs,java nmap <silent> <leader>; <Plug>(cosco-commaOrSemiColon)]])
vim.cmd([[autocmd BufEnter * set fo-=o fo-=r fo-=c]])
vim.cmd([[autocmd BufRead,BufNewFile Jenkinsfile setf groovy]])
vim.cmd([[autocmd FileType kivy setlocal commentstring=#\ %s]])
vim.cmd([[autocmd FileType gitcommit setlocal cc=72]])

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = { '*' },
    command = [[setlocal cc=100]],
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = { '*.md', '*.txt' },
    command = [[setlocal cc=95 spell spelllang=en_us]],
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = { '*.c' },
    command = [[setlocal cc=80 shiftwidth=8 tabstop=8 softtabstop=8 cindent noet]],
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = { '*.py' },
    command = [[setlocal cc=79]],
})

vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
    pattern = { '*' },
    command = [[%s/\s\+$//e]],
})

---------------------------- Keybinds ---------------------------------------------------------

local options = { silent = true }

---- Leader
vim.keymap.set("n", "<Space>", "<NOP>", options)
vim.g.mapleader = " "

---- Esc
vim.keymap.set("i", "jj", "<Esc>", options)

---- Esc in terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", options)
vim.keymap.set("t", "jj", "<C-\\><C-n>", options)

---- ToggleTerm
vim.keymap.set("n", "<leader>tt", ":ToggleTerm size=10<CR>", options)

---- Toggle SymbolsOutline
vim.keymap.set("n", "<F8>", ":SymbolsOutline<CR>", options)

---- Change directory
vim.keymap.set("n", "<leader>ch", ":cd ~/", options)
vim.keymap.set("n", "<leader>cc", ":cd ", options)

---- Switch buffers
vim.keymap.set("n", "L", ":bn<CR>", options)
vim.keymap.set("n", "H", ":bp<CR>", options)
vim.keymap.set("n", "<C-s>", "<C-^>", options)
vim.keymap.set("n", "<leader>bs", "<Cmd>lua require('reach').buffers({handle='bufnr'})<CR>", options)

---- Move buffers
vim.keymap.set("n", "<leader>bml", ":BufferLineMoveNext<CR>", options)
vim.keymap.set("n", "<leader>bmh", ":BufferLineMovePrev<CR>", options)

---- Move selected lines up or down
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", options)
vim.keymap.set("n", "<A-j>", ":m.+1<CR>==", options)
vim.keymap.set("v", "<A-k>", ":m-2<CR>gv=gv", options)
vim.keymap.set("v", "<A-j>", ":m'>+<CR>gv=gv", options)

---- Find & rename word under cursor
vim.keymap.set("n", "<leader>rn", "* :%s//", options)

---- Delete all buffers except current
vim.keymap.set("n", "<leader>bd", ":%bd|e#|bd#<CR>", options)

---- Remove highlights after search
vim.keymap.set("n", "<leader>/", ":noh<CR>", options)

---- Yank all & copy all
vim.keymap.set("n", "<leader>ya", "ggVGy", options)
vim.keymap.set("n", "<leader>aa", "ggVG\"+y", options)

---- Load scheme
vim.keymap.set("n", ";html", ":-1read $HOME/.config/nvim/.skeleton.html<CR>7jwf>a", options)
vim.keymap.set("n", ";ct", ":-1read $HOME/.config/nvim/.skeleton.c<CR>4jo", options)
vim.keymap.set("n", ";cpt", ":-1read $HOME/.config/nvim/.skeleton.cpp<CR>4jo", options)

---- Nvimtree
vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", options)
vim.keymap.set("n", "<leader>n", ":NvimTreeFocus<CR>", options)

---- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", options)
vim.keymap.set("n", "<C-j>", "<C-w>j", options)
vim.keymap.set("n", "<C-k>", "<C-w>k", options)
vim.keymap.set("n", "<C-l>", "<C-w>l", options)

---- Indent in visual mode
vim.keymap.set("v", "<", "<gv", options)
vim.keymap.set("v", ">", ">gv", options)

---- Indent whole file
vim.keymap.set('n', '<leader>gf', 'gg=G<C-o>zz', options)

---- Open telescope
vim.keymap.set("n", "<leader>tf", "<Cmd>lua require('telescope.builtin').find_files()<CR>", options)
vim.keymap.set("n", "<leader>tl", "<Cmd>lua require('telescope.builtin').live_grep()<CR>", options)
vim.keymap.set("n", "<leader>ts", "<Cmd>lua require('telescope.builtin').grep_string()<CR>", options)
vim.keymap.set("n", "<leader>tcb", "<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", options)
vim.keymap.set("n", "<leader>tb", "<Cmd>lua require('telescope.builtin').buffers()<CR>", options)

---------------------------- Colorscheme ---------------------------------------------

vim.cmd([[colorscheme gruvbox]])

---------------------------- Plugins -------------------------------------------------

require("plugins")
require("nvCmp")
require("nvimLsp")
require("nvimTree")
require("bufferLine")
require("luaLine")
require("gitsigns").setup()
require("colorizer").setup()
require("telescope").setup({ defaults = { sorting_strategy = "ascending" } })
require("telescope").load_extension("fzf")
require("telescope").load_extension("dap")
require("neoscroll").setup()
require("luasnip.loaders.from_vscode").load()
require("treeSitter")
require("lightSpeed")
require("toggleterm").setup()
require("autopairs")
require("nvimDap")
require("symbols-outline").setup()
