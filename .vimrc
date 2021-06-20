call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'

let g:ormolu_command="fourmolu"
let g:ormolu_suppress_stderr=1
let g:ormolu_options=["-o -XTypeApplications"]
Plug 'sdiehl/vim-ormolu'

call plug#end()
