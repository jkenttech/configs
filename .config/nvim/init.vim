:set nu
:set relativenumber
:set scrolloff=10
:set shiftwidth=2
:set tabstop=2
:set smartindent

au VimEnter * NERDTree

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
call plug#end()
