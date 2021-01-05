let g:coc_global_extensions = [
            \ 'coc-dictionary',
            \ 'coc-git',
            \ 'coc-json',
            \ 'coc-prettier',
            \ 'coc-python',
            \ 'coc-rust-analyzer',
            \ 'coc-snippets',
            \ 'coc-syntax',
            \ 'coc-vimlsp',
            \ 'coc-vimtex',
            \ 'coc-word',
            \]

" Autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Snippets
xmap <Tab> <Plug>(coc-snippets-select)

" Navigation
nmap <M-n>     <Plug>(coc-diagnostic-next)
nmap <M-p>     <Plug>(coc-diagnostic-prev)
nmap <space>f  <Plug>(coc-format-selected)
nmap <space>F  <Plug>(coc-format)
nmap <space>D  <Plug>(coc-declaration)
nmap <space>d  <Plug>(coc-definition)
nmap <space>i  <Plug>(coc-implementation)
nmap <space>u  <Plug>(coc-references)
nmap <space>re <Plug>(coc-refactor)
nmap <space>rn <Plug>(coc-rename)
nmap <space>c  <Plug>(coc-fix-current)

nnoremap <silent> <space>K <Cmd>call CocAction('doHover')<CR>
xnoremap <silent> <space>K <Cmd>call CocAction('doHover')<CR>
nnoremap <silent> <K> :call doHover()<CR>
xnoremap <silent> <K> :call doHover()<CR>

" Git
nmap [g <plug>(coc-git-prevchunk)
nmap ]g <plug>(coc-git-nextchunk)
nmap gs <Cmd>CocCommand git.chunkStage<cr>
nmap <space>G <plug>(coc-git-chunkinfo)
nmap ;gu <Cmd>CocCommand git.chunkUndo<cr>

" Diagnostics
nmap [d <plug>(coc-diagnostic-prev)
nmap ]d <plug>(coc-diagnostic-next)
nmap [D <plug>(coc-diagnostic-first)
nmap ]D <plug>(coc-diagnostic-last)
