" vimrc file
" Lazar Milovanović
"-------- start ------------------------------------------------------------
set nocompatible
set backspace=indent,eol,start
set nobackup
set autoindent
set autochdir
set number
set expandtab
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set t_Co=256
set encoding=utf-8
set wildmenu
set wildmode=longest:full,full
"-------- Plugin manager ---------------------------------------------------
call plug#begin('~/.vim/bundle')
""-------- Plugins ----------------------------------------------------------
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
Plug 'nvie/vim-flake8'
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'crusoexia/vim-monokai'
""---------------------------------------------------------------------------
call plug#end()
"-------- remaps -----------------------------------------------------------
" ------- nerdtree remap ---------------------------------------------------
map <C-n> :NERDTreeToggle<CR>
"---------------------------------------------------------------------------
map Q gq
"---------------------------------------------------------------------------
if has("mouse")
    set mouse=a
endif
"---------------------------------------------------------------------------
if &t_Co > 2 || has("gui_running")
    syntax on
    set colorcolumn=80
    colorscheme monokai
    set background=dark
    set hlsearch
endif
"---------------------------------------------------------------------------
if has("gui_running")
    set guioptions-=T
"    set guioptions-=m
    set guifont=Inconsolata\ 12
endif
"---------------------------------------------------------------------------
filetype plugin indent on
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
"-------- end --------------------------------------------------------------
