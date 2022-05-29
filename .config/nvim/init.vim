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

" generic interactive finder and dispatcher
Plug 'liuchengxu/vim-clap'

" Requires for clojure
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'liquidz/vim-iced-asyncomplete', {'for': 'lojure'}
Plug 'liquidz/vim-iced-coc-source', {'for': 'clojure'}

call plug#end()


colorscheme  gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif


" Enable vim-iced's default key mapping
" This is recommended for newbies
let g:iced_enable_default_key_mappings = v:true

let g:sexp_mappings = {'sexp_indent': '', 'sexp_indent_top': ''}
