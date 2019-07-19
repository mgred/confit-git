source ~/.config/nvim/settings.vim
source ~/.config/nvim/highlight.vim
source ~/.config/nvim/plugins.vim

" let g:python_host_prog = '/usr/local/bin/python'
" let g:python3_host_prog = '/usr/local/bin/python3.6'

" Show or hide the statusbar (laststatus)
" <leader>sl
let g:show_status_line_details = 0
function! ToggleStatusLine()
  set laststatus=1
  set signcolumn=no
  set statusline= 
  " set statusline+=%5*
  set statusline+=%t
  if !g:show_status_line_details
    set laststatus=2
    set signcolumn=yes
    set statusline+=%r\ 
    set statusline+=%{&readonly?'ro\ ':''}
    set statusline+=%6*%{&modified?'•\ ':''}
    set statusline+=%3*%{WarningStatus()}
    set statusline+=%2*%{ErrorStatus()}
    set statusline+=%=%5*%v:%l\/%L
    let g:show_status_line_details = 1
    return
  endif
  let g:show_status_line_details = 0
endfunction

function! ErrorStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  return (l:counts.error + l:counts.style_error) == 0 ? '' : g:ale_sign_error . ' '
endfunction

function! WarningStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  return (l:counts.warning + l:counts.style_warning) == 0 ? '' : g:ale_sign_warning . ' '
endfunction

source ~/.config/nvim/mappings.vim
" vim:tw=80:ts=2:sw=2:expandtab
