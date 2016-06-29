" Plugin manager
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'

" Javascript support
Plug 'pangloss/vim-javascript'

" end Plugin manager
call plug#end()

" Indentation
:set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Line numbers
:set number

" Status bar for filename
set laststatus=2
