"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christophermca/meta5'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

call vundle#end()

"settings
set nu
set encoding=utf-8
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
colorscheme default
let g:airline_theme='bubblegum'
let g:ycm_autoclose_preview_window_after_completion=1
syntax on
set ttimeoutlen=10
