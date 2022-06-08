set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=10
set backspace=indent,eol,start
set splitright

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on
" set colorcolumn=79
set termguicolors

:let maplocalleader=","


" Give more space for displaying messages.
set cmdheight=2

let mapleader = ' '

call plug#begin('~/.vim/plugged')

" Starup page
Plug 'mhinz/vim-startify'

" File management
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'

" color schemas
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

" for commentary
" keymap: gcc
"
Plug 'tpope/vim-commentary'

" statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"multicursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Conjure
Plug 'Olical/conjure'

" Conjure support - jack-in with nrepl dependencies
" Start a REPL from within Vim
Plug 'tpope/vim-dispatch'
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'

" Structural editing for lisp languages
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'

" Auto-close parens
Plug 'jiangmiao/auto-pairs'

" Completion support
Plug 'Shougo/deoplete.nvim'
Plug 'ncm2/float-preview.nvim'

" Searching in projects - ripgrep
Plug 'liuchengxu/vim-clap'


" Linting with clj-kondo
Plug 'dense-analysis/ale'

call plug#end()

" Enable startify startup screen
let g:webdevicons_enable_startify = 1

" Search in project configuration
let g:clap_provider_grep_delay = 50

nnoremap <leader>*  :Clap grep ++query=<cword><cr>
nnoremap <leader>fg :Clap grep<cr>
nnoremap <leader>ff :Clap files --hidden<cr>
nnoremap <leader>fb :Clap buffers<cr>
nnoremap <leader>fw :Clap windows<cr>
nnoremap <leader>fr :Clap history<cr>
nnoremap <leader>fh :Clap command_history<cr>
nnoremap <leader>fj :Clap jumps<cr>
nnoremap <leader>fl :Clap blines<cr>
nnoremap <leader>fL :Clap lines<cr>
nnoremap <leader>ft :Clap filetypes<cr>
nnoremap <leader>fm :Clap marks<cr>

" Completion configuration
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('keyword_patterns', {'clojure': '[\w!$%&*+/:<=>?@\^_~\-\.#]*'})
set completeopt-=preview

let g:float_preview#docked = 0
let g:float_preview#max_width = 80
let g:float_preview#max_height = 40

" Lint configuration - clj-kondo
" clj-kondo should be installed on operating system path
let g:ale_linters = {
      \ 'clojure': ['clj-kondo']
      \}


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

" for nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
