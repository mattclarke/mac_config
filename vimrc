"basic setup in case we are somewhere without neovim

"settings
set nu
set paste
set encoding=utf-8
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set path+=**
set wildmenu
colorscheme darkblue
syntax on
set ttimeoutlen=10
set clipboard=unnamed
let mapleader = " "
nnoremap <CR> :nohlsearch<cr>
:set incsearch
:set hlsearch


" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

au Filetype python set
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ expandtab
    \ autoindent
