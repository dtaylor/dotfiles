execute pathogen#infect()
syntax on
filetype plugin indent on
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
"let Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'fancy'


" quickfix for Perl error formats
set errorformat+=%m\ at\ %f\ line\ %l\.
set errorformat+=%m\ at\ %f\ line\ %l

set nocompatible
set laststatus=2
set ignorecase
set smartcase
set hlsearch
set paste
set nonu
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
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
set splitbelow
set splitright
" set autochdir

let mapleader = ','
nnoremap <leader><space> :noh<cr>
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
inoremap jj <ESC>
nnoremap JJJJ <Nop>
"nnoremap <leader>a :Ack
nnoremap <leader>v V`]
nnoremap <leader>w <C-w>v<C-w>l
" set relativenumber
" set undofile
" set nolist

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap j gj
nmap k gk

func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
noremap <leader>w :call DeleteTrailingWS()<CR>

if exists(":Tabularize")
  nnoremap <leader>t= :Tabularize /=<CR>
  vnoremap <leader>t= :Tabularize /=<CR>
  nnoremap <leader>t: :Tabularize /:<CR>
  vnoremap <leader>t: :Tabularize /:<CR>
endif

