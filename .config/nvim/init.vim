" Plugings
call plug#begin('~/.local/share/nvim/plugged')
" Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug '~/Git/neotex', { 'for': 'tex' }
call plug#end()

" Spaces, not tabs!
set tabstop=4
set expandtab
set shiftwidth=4

" General formatting
set number
syntax on
