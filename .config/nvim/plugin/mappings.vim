" Move among buffers with CTRL
nnoremap <C-h> :bnext<CR>
nnoremap <C-l> :bprev<CR>

" Toggle undo tree
nnoremap <F5> :MundoToggle<CR>

" Toggle directory tree
nnoremap <C-t> :NERDTreeToggle<CR>

" Miniyank
nmap p <Plug>(miniyank-autoput)
nmap P <Plug>(miniyank-autoPut)
xmap p <Plug>(miniyank-autoput)
xmap P <Plug>(miniyank-autoPut)
nmap <space>n <Plug>(miniyank-cycle)
nmap <space>N <Plug>(miniyank-cycleback)

" Copy to end of line
map Y y$

" Redo
nnoremap U <C-r>

" Move between windows
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

" Move windows around
nnoremap <M-H> <C-w>H
nnoremap <M-J> <C-w>J
nnoremap <M-K> <C-w>K
nnoremap <M-L> <C-w>L

" Resize windows
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  <C-W>>
noremap <right> <C-W><

" Page up/down
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

" Return to normal mode
tnoremap <M-space> <C-\><C-n>

" ??? (folding)
nnoremap zJ zczjzo
nnoremap zK zczkzo

" ???
nmap <space>s <cmd>source %<cr>
