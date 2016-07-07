" Plugin manager
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'

" Javascript support
Plug 'pangloss/vim-javascript'

" end Plugin manager
call plug#end()

" ctrlp customization
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command={
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others']
    \  },
  \ 'fallback': 'find %s -type f'
  \ }
let g:ctrlp_custom_ignore={
  \ 'dir': '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|png|jpg)$'
  \ }
let g:ctrlp_max_files=0

" Indentation
:set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Line numbers
:set number

" Status bar for filename
set laststatus=2
