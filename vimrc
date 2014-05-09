" Vundle
"----------------------------------------------------------------

set nocompatible
filetype off
filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'kien/ctrlp.vim'

" My preferences
"----------------------------------------------------------------

" Auto-source .vimrc without breaking Powerline display
autocmd! bufwritepost .vimrc nested source %

" Display
set t_Co=256
syntax on
colorscheme distinguished
set background=dark
set number
set ruler
set showmode
set showcmd
set title
set wildmenu
set fillchars+=vert:. "change split borders
set listchars=eol:¶,nbsp:⋅,tab:>-,trail:~,extends:>,precedes:< "show white spaces
set cursorline
set cursorcolumn
set colorcolumn=80
hi LineNr       ctermbg=233 "line number default background color
hi StatusLine   ctermbg=233 "status line default background color
hi CursorLine   term=bold cterm=bold ctermfg=none ctermbg=52  "highlight current line
hi CursorLineNR term=bold cterm=bold ctermfg=232 ctermbg=148  "highlight current line number
hi Cursorcolumn term=none cterm=none ctermfg=none ctermbg=233 "highlight current column
hi Colorcolumn  term=none cterm=none ctermfg=none ctermbg=232 "highlight column limit

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
set wildignorecase
set wildignore+=*\\tmp\\*,*\\bin\\*,*\\pkg\\*,*\\AppData\\*
set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*
set wildignore+=*~,*.swp,*.zip,*.exe,*.dat,*.lnk,*.pdf
set wildignore+=*.class,*.jar
set wildignore+=*.o,*.d,*.so
set wildignore+=*.pyc

" No backup files
set nowritebackup
set nobackup
set noswapfile

" Other options
set backspace=indent,eol,start
set autoread
set nofoldenable
set ttyfast
set visualbell        "don't beep
set noerrorbells      "don't beep
set lazyredraw
set mouse=a           "enable mouse
set clipboard=unnamed "better copy/paste
set splitright
set splitbelow

" Package configurations
"----------------------------------------------------------------

" Powerline/Airline
set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" NERD Tree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0

" Syntastic
hi SignColumn ctermbg=233
let g:tagbar_usearrows=1

" Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Indent Guides
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=52
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=124

" CtrlP
let g:ctrlp_follow_symlinks=1

" Key mappings
"----------------------------------------------------------------

let mapleader=","

nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <F2> :TagbarToggle<CR>
nnoremap <F3> :set hlsearch!<CR>
nnoremap <F4> :set list!<CR>:IndentGuidesToggle<CR>
nnoremap <F5> :SyntasticCheck<CR>:SyntasticToggleMode<CR>
nnoremap <F6> :setlocal spell! spelllang=en_us<CR>
set pastetoggle=<F9>
nnoremap <F10> :bd<CR>
nnoremap <F11> :bp!<CR>
nnoremap <F12> :bn!<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-a> GVgg
nnoremap <C-n> :enew<CR>
nnoremap <C-q> :q<CR>
nnoremap <leader>t :call RemoveTrailingSpaces()<CR>
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRU<CR>

" Functions
"----------------------------------------------------------------

function! RemoveTrailingSpaces()
    exec ':%s/\s\+$//'
endfunction
