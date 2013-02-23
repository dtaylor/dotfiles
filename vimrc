execute pathogen#infect()
syntax on
filetype plugin indent on
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'fancy'


" quickfix for Perl error formats
set errorformat+=%m\ at\ %f\ line\ %l\.
set errorformat+=%m\ at\ %f\ line\ %l

set nocompatible
set paste
set nonu
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
" set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
set wrap

let mapleader = ","
nnoremap <leader><space> :noh<cr>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]
inoremap jj <ESC>
nnoremap JJJJ <Nop>
nnoremap <leader>w <C-w>v<C-w>l
" set relativenumber
" set undofile
" set nolist

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

