"-----------------------------------------
"             Vundle configs
"-----------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on     " required

"-----------------------------------------
"             My preferences
"-----------------------------------------
color koehler
syntax on
set shiftwidth=4
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set number
set backspace=indent,eol,start
set ignorecase
set ruler
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=darkred

set nowritebackup
set nobackup
set noswapfile

"-----------------------------------------
"        Powerline/Airline configs
"-----------------------------------------
set laststatus=2
set encoding=utf-8
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
