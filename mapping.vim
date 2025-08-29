" Tabbing
nnoremap <silent> > :><cr>
nnoremap <silent> < :<<cr>

" Visual tabbing
vnoremap <silent> > :><cr>gv
vnoremap <silent> < :<<cr>gv

" Global buffer paste
nnoremap <silent> \ "+
vnoremap <silent> \ "+

" Void register
nnoremap <silent> <BS> "_
vnoremap <silent> <BS> "_
nnoremap <silent> x "_x
vnoremap <silent> x "_x

" Clear search highlight
nnoremap <silent> <CR> :noh<cr><cr>

" Save
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wa<cr>

" Half buffer jump
nnoremap <silent> <C-j> <C-d>zz
vnoremap <silent> <C-j> <C-d>zz
nnoremap <silent> <C-k> <C-u>zz
vnoremap <silent> <C-k> <C-u>zz

" Disable F1
inoremap <silent> <F1> <nop>
nnoremap <silent> <F1> <nop>

" Delete current buffer
nnoremap <silent> <leader>dd :bdelete<cr>
