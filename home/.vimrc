color obsidian

" Indentation
set backspace=indent,eol,start
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Line numbers
set number

" Status bar for filename
set laststatus=2

" Easier splits
nnoremap <Leader>v :vsp<enter>
nnoremap <Leader>s :sp<enter>

" Plugin manager
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" tmux/vim seamless navication
Plug 'christoomey/vim-tmux-navigator'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/neocomplete.vim'

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

" neocomplete customization
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2
