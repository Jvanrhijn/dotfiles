" Plugings
call plug#begin('~/.local/share/nvim/plugged')
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'dylanaraps/wal.vim'
call plug#end()

"colorscheme wal
"colorscheme molokai

" Spaces, not tabs!
set tabstop=4
set expandtab
set shiftwidth=4

" Show line at 80 columns
set colorcolumn=100

" General formatting
set number
syntax on

" Turn off line number background
"highlight clear LineNr

" Turn on hybrid line numbers
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
