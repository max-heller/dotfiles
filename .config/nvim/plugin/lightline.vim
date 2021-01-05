let g:lightline = {}
let g:lightline.colorscheme = 'solarized'
let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ],
    \           [ 'gitbranch', 'readonly', 'filename', 'modified', 'lspstatus' ] ]
    \ }
let g:lightline.component_function = {
    \ 'gitbranch': 'FugitiveHead',
    \ 'lspstatus': 'coc#status',
    \ }

" Update lightline on COC change
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" Hide mode from status line (already in lightline)
set noshowmode
