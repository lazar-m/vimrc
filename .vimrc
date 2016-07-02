" vimrc file
" Maintainer: Lazar Milovanović
" Last change 3. JUL 2016.
"---------------------------------------------------------------------------
set nocompatible
set backspace=indent,eol,start
set nobackup
set autoindent
set number
set noexpandtab
set tabstop=8
set clipboard=unnamedplus
set t_Co=256
"---------------------------------------------------------------------------
if has("mouse")
	set mouse=a
endif
"-------- GVIM remove toolbars ---------------------------------------------
if has("gui_running")
"	set guioptions-=T
"	set guioptions-=m
	set guifont=Terminus\ 12
	"set guifont=DejaVu\ Sans\ Mono\ 10
endif
"-------- Vundle plugin ----------------------------------------------------
set rtp+=/home/lazar/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"-------- nerdtree plugin --------------------------------------------------
Plugin 'scrooloose/nerdtree'
"-------- delimitMate ------------------------------------------------------
Plugin 'Raimondi/delimitMate'
"-------- YouCompleteMe ----------------------------------------------------
Plugin 'Valloric/YouCompleteMe'
"-------- gruvbox theme ----------------------------------------------------
Plugin 'morhetz/gruvbox'
"---------------------------------------------------------------------------
call vundle#end()
"-------- autocomplete conf ------------------------------------------------
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"---------------------------------------------------------------------------
if has("autocmd")
	filetype plugin indent on
endif
"---------------------------------------------------------------------------
if &t_Co > 2 || has("gui_running")
	syntax on
"	set foldmethod=syntax
	set colorcolumn=80
"	colorscheme desert
	set background=dark
	colorscheme gruvbox 
	set hlsearch
endif
" ------- nerdtree remap ---------------------------------------------------
map <C-n> :NERDTreeToggle<CR>
"-------- remaps -----------------------------------------------------------
map Q gq                     
"-------- end --------------------------------------------------------------
