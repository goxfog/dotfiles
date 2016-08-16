set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vndle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'powerline/powerline'

" Keep Plugin commands between vundle#begin/end.
call vundle#end()
filetype plugin indent on	" required

"""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized
"""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256			" enable 256-color mode
set number				" show line numbers
set laststatus=2		" last window always has a statusline
set ignorecase			" make searches case-insensitive
set ruler				" always show info along bottom
set cursorline
set cursorcolumn
set hlsearch
set incsearch			" increasing serach , do highlight as search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Powerline_colorscheme='solarized256'
""""""
syntax enable
syntax on
"""""
filetype indent on
set expandtab
set autoindent			" auto-indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
""""""""""
