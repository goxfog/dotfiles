" ========================================
" Vim plugin configuration
" ========================================
"
if &compatible
    set nocompatible
end
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :PluginInstall from within vim
" Filetype off is required by vundle
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle (required)
Plugin 'VundleVim/vundle.vim'

" =====================custom plugin===================
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'powerline/powerline'

" =====================================================

call vundle#end()
"Filetype plugin indent on is required by vundle
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""
