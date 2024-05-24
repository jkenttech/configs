:set nu
:set relativenumber
:set scrolloff=10

au VimEnter * NERDTree

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'

call plug#end()
