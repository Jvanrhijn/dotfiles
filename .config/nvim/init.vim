" Plugings
call plug#begin('~/.local/share/nvim/plugged')
" Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'dylanaraps/wal.vim'
Plug '~/Git/neotex', { 'for': 'tex' }
call plug#end()

colorscheme wal

" Spaces, not tabs!
set tabstop=4
set expandtab
set shiftwidth=4

" Column max width line
set colorcolumn=100

" General formatting
set number
syntax on
