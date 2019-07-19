"
" Plugins
"

call plug#begin('~/.local/share/nvim/plugged')

" https://github.com/sgur/vim-editorconfig
" pure vim script implementation that doesn't
" need if_python

Plug 'editorconfig/editorconfig-vim'

Plug '/home/marc/tools/fzf'

Plug 'junegunn/fzf.vim'

let g:fzf_layout = { 'down': '~20%' }

Plug 'jiangmiao/auto-pairs'

Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-surround'

Plug 'w0rp/ale'

let g:ale_linters = {
\ 'typescript': ['tsserver']
\}

let g:ale_fixers = {
\ 'typescript': ['prettier', 'tslint']
\}

let g:ale_sign_error = '×'
let g:ale_sign_warning = '▴'

imap <C-Space> <Plug>(ale_complete)

Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" vim:tw=80:ts=2:sw=2:expandtab
