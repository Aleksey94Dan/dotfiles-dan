set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=10
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on
set colorcolumn=79

let mapleader = ' '

call plug#begin('~/.vim/plugged')

" color schemas
Plug 'morhetz/gruvbox'

" for commentary
" keymap: gcc
Plug 'tpope/vim-commentary'

" statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"multicursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}


" generic interactive finder and dispatcher
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" for clojure
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}

Plug 'hrsh7th/nvim-compe'
Plug 'tami5/vim-iced-compe', {'for': 'clojure'}

call plug#end()


colorscheme  gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif


" setting for xclip
set clipboard+=unnamedplus
map <Leader>y "*y
map <Leader>p "*p

" setting for airline_theme
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='murmur'

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Enable vim-iced's default key mapping
" This is recommended for newbies
let g:iced_enable_default_key_mappings = v:true
