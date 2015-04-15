execute pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
filetype plugin indent on

" quickfix for Perl error formats
"set errorformat+=%m\ at\ %f\ line\ %l\.
"set errorformat+=%m\ at\ %f\ line\ %l

set nocompatible
set noshowmode
set wrap
set paste
set showmatch
set autoindent
set splitbelow
set splitright
set ignorecase
set smartcase
set incsearch
set hlsearch
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

set nolist
" set statusline=%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
" set autochdir

let mapleader = ','
nnoremap <leader><space> :noh<cr>
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <Leader>d :%s///g<cr>
inoremap jj <ESC>
nnoremap JJJJ <Nop>
"nnoremap <leader>a :Ack
nnoremap <leader>v V`]
" nnoremap <leader>w <C-w>v<C-w>l
" set relativenumber
" set undofile

" ----- Plugin-Specific Settings --------------------------------------

" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
set background=dark

" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256

" Set the colorscheme
colorscheme solarized


" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1


" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1


" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
nmap <silent> <leader>n :NERDTreeToggle<CR>
" To have NERDTree always open on startup
" let g:nerdtree_tabs_open_on_console_startup = 1


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

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
