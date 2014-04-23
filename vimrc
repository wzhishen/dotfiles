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

" Display
color koehler
syntax on
set number
set ruler
set showmode
set title
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=88
set cursorcolumn
hi Cursorcolumn term=none cterm=none ctermbg=233
set colorcolumn=80
hi Colorcolumn term=none cterm=none ctermbg=233

" Indentation
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Search
set ignorecase
set smartcase
set incsearch

" No temp files
set nowritebackup
set nobackup
set noswapfile

" Other options
set backspace=indent,eol,start
set autoread
set nofoldenable
set ttyfast
set visualbell           " don't beep
set noerrorbells         " don't beep
set lazyredraw

"-----------------------------------------
"        Powerline/Airline configs
"-----------------------------------------

set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
