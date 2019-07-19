"
" Mappings
"

let mapleader = ";"

" ESC with jk
imap jk <Esc>

" Save & Quit
map <leader>w :w<CR>
map <leader>aw :wa<CR>
map <leader>q :wq<CR>
map <leader>aq :wqa<CR>
map <leader>x :q!<CR>
map <leader>ax :qa!<CR>
map <leader>W :w !sudo tee %<CR>

" Move between buffers
map <C-n> :bnext<CR>
map <C-p> :bprev<CR>

" Move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

map <leader>sv :source ~/.config/nvim/init.vim<CR>
map <silent> <leader>n :set number! relativenumber!<CR>

" Show the current filepath
map <leader>fn :echo @%<CR>

" Toggle file status, position, show change, warning, error
map <silent> <leader>sl :call ToggleStatusLine()<CR>

" Substitute
nnoremap <leader>ss :%s//<left>
nnoremap <Leader>sw :%s/<C-r><C-w>//g<Left><Left>
nnoremap <Leader>sW :%s/\<<C-r><C-w>\>//g<Left><Left>

" Replace (Substitute on one line)
nnoremap <leader>rs :s//<left>
nnoremap <leader>rw :s/<C-r><C-w>//g<Left><Left>
nnoremap <leader>rW :s/\<<C-r><C-w>\>//g<Left><Left>

" FZF
nmap <leader>j :GitFiles<CR>
nmap <leader>ff :Files<CR>
nmap <leader>e :Buffers<CR>

" Make Y behave like other capitals
nnoremap Y y$

" ALE
nmap <silent>gn <Plug>(ale_next)
nmap <silent>gp <Plug>(ale_previous)
nmap <silent> gi <Plug>(ale_go_to_definition)
nmap <silent> gd <Plug>(ale_go_to_type_definition)
nmap <silent> gr <Plug>(ale_find_references)
nmap <leader> fa <Plug>(ale_fix)
nnoremap <silent> K :ALEHover<CR>

" vim:tw=80:ts=2:sw=2:expandtab
