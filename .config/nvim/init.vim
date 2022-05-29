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



call plug#end()


colorscheme  gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif

