"Plugins
"Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-system-copy'
Plug 'chrisbra/Colorizer'
Plug 'arcticicestudio/nord-vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Plug 'christoomey/vim-sort-motion'

call plug#end()

"Themes
"Gruvbox settings
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox


"Nord settings
" augroup nord-overrides
"   autocmd!
"   autocmd ColorScheme nord highlight Comment ctermfg=5%
" augroup END
" let g:nord_cursor_line_number_background = 1
" let g:nord_bold_vertical_split_line = 1
" let g:nord_uniform_diff_background = 1
" let g:nord_underline = 1
" colorscheme nord

" Global settings
autocmd FileType toml setlocal commentstring=#\ %s
autocmd FileType cfg setlocal commentstring=//\ %s
command! MakeTags !ctags -R .

set cursorline 
set path+=**
set mouse=a
set number relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set splitright
set splitbelow
set showcmd

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail'

let mapleader=";"

"Tweaks for browsing
let g:netrw_banner=0
let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=1         "open splits to the right
let g:netrw_liststyle=3    "tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\s\+'

" Keybinds
inoremap jj <ESC>
nnoremap <leader>mv :mkview<CR>
nnoremap <leader>lv :loadview<CR>

"Change Tabs
nnoremap <leader>j gT
nnoremap <leader>k gt

nmap <F8> :TagbarToggle<CR>
nnoremap <leader>html :-1read $HOME/.config/nvim/.skeleton.html<CR>4jwf>a
nnoremap <F12> :!xdg-open %<CR>

"Open terminal in current directory
map <C-t> :cd %:p:h<CR>:vs +te<CR>
map <leader><C-t> :cd %:p:h<CR>:sp +te<CR>

"Exit insert mode when in terminal mode,insert mode
tnoremap <Esc> <C-\><C-n>

"Open new file in new tab with current directory
"nnoremap <C-A-N> :cd %:p:h<CR>:tabe <CR>
"nnoremap <C-R> :vs <CR> :term python % <CR>

"Delete current file
nnoremap <S-Del> :call delete(@%)<CR>

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

" Title case
nmap <leader>gz  <Plug>Titlecase
vmap <leader>gz  <Plug>Titlecase
nmap <leader>gzz <Plug>TitlecaseLine

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-pyright',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-jedi',
  \ 'coc-html-css-support',
  \ 'coc-sql',
  \ 'coc-toml'
  \ ]

" if hidden is not set, TextEdit might fail.
set hidden  
" Better display for messages 
set cmdheight=2 
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Make <CR> auto-select the first completion item and notify coc.nvim to format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
