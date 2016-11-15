" vimrc file
" Lazar Milovanović
"---------------------------------------------------------------------------
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
"---------------------------------------------------------------------------
if has("mouse")
    set mouse=a
endif
"-------- GVIM remove toolbars ---------------------------------------------
if has("gui_running")
"    set guioptions-=T
"    set guioptions-=m
"    set guifont=Inconsolata\ 12
endif
"-------- Vundle plugin ----------------------------------------------------
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"-------- nerdtree plugin --------------------------------------------------
"Plugin 'scrooloose/nerdtree'
"-------- delimitMate ------------------------------------------------------
"Plugin 'Raimondi/delimitMate'
"---------------------------------------------------------------------------
"call vundle#end()
"---------------------------------------------------------------------------
if has("autocmd")
    filetype plugin indent on
endif
"---------------------------------------------------------------------------
if &t_Co > 2 || has("gui_running")
    syntax on
    set colorcolumn=80
    colorscheme slate
    set background=dark
    set hlsearch
endif
" ------- nerdtree remap ---------------------------------------------------
"map <C-n> :NERDTreeToggle<CR>
"-------- remaps -----------------------------------------------------------
map Q gq                     
"-------- end --------------------------------------------------------------
