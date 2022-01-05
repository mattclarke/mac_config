"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christophermca/meta5'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"settings
set nu
set encoding=utf-8
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set path+=**
set wildmenu
colorscheme default
let g:airline_theme='bubblegum'
let g:ycm_autoclose_preview_window_after_completion=1
syntax on
set ttimeoutlen=10
set clipboard=unnamed

"python
au Filetype python set 
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ expandtab
    \ autoindent
    \ fileformat=unix
