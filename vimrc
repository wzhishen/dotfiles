"-----------------------------------------
"             Vundle configs
"-----------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on     " required

"-----------------------------------------
"             My preferences
"-----------------------------------------

" Automatic reloading of .vimrc
"autocmd! bufwritepost .vimrc source %

" Display
set t_Co=256
color koehler
syntax on
set number
set ruler
set showmode
set showcmd
set title
set listchars=eol:¶,nbsp:⋅,tab:>-,trail:~,extends:>,precedes:< "show white spaces
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=52    "highlight current line
set cursorcolumn
hi Cursorcolumn term=none cterm=none ctermbg=233 "highlight current column
set colorcolumn=80
hi Colorcolumn term=none cterm=none ctermbg=232  "highlight column limit

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
set hlsearch

" No backup files
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
set mouse=a              " enable mouse
set clipboard=unnamed    " better copy/paste
set splitright
set splitbelow

"-----------------------------------------
"        Powerline/Airline configs
"-----------------------------------------

set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"-----------------------------------------
"           NERD Tree configs
"-----------------------------------------

"autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0

"-----------------------------------------
"           Syntastic configs
"-----------------------------------------

hi SignColumn ctermbg=233

"-----------------------------------------
"             Key mappings
"-----------------------------------------

let mapleader=","

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :set hlsearch!<CR>
nnoremap <F4> :set list!<CR>
nnoremap <F5> :SyntasticCheck<CR>:SyntasticToggleMode<CR>
nnoremap <F6> :setlocal spell! spelllang=en_us<CR>
set pastetoggle=<F7>
nnoremap <F11> :bp!<CR>
nnoremap <F12> :bn!<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-a> GVgg
nnoremap <C-n> :enew<CR>
nnoremap <C-q> :q<CR>

