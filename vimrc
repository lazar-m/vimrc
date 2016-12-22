" vimrc file
" Lazar Milovanović
"-------- start ------------------------------------------------------------
set nocompatible
set backspace=indent,eol,start
set nobackup
set autoindent
set number
set expandtab
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set t_Co=256
set encoding=utf-8
"-------- Plugin manager ---------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"-------- Let Vundle manage itself -----------------------------------------
Plugin 'VundleVim/Vundle.vim'
"-------- Plugins ----------------------------------------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'airblade/vim-rooter'
Plugin 'crusoexia/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"---------------------------------------------------------------------------
call vundle#end()
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
if has("autocmd")
    filetype plugin indent on
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    let g:airline#extensions#tabline#enabled = 1
endif 
"-------- end --------------------------------------------------------------
