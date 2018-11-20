" Plugings
call plug#begin('~/.local/share/nvim/plugged')
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'dylanaraps/wal.vim'
Plug 'zah/nim.vim'
Plug 'rakr/vim-one'
Plug 'udalov/kotlin-vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"

colorscheme one 
set background=light

" Spaces, not tabs!
set tabstop=2
set expandtab
set shiftwidth=2

" Column max width line
set colorcolumn=100

" General formatting
set number
syntax on

" Turn off line number background
" highlight clear LineNr

" Turn on hybrid line numbers
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

runtime macros/matchit.vim

" Nim 
fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

" Jump to tag
nn <M-g> :call JumpToDef()<cr>
ino <M-g> <esc>:call JumpToDef()<cr>i
