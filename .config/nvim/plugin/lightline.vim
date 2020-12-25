let g:lightline = {}
let g:lightline.colorscheme = 'solarized'
let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ],
    \           [ 'gitbranch', 'readonly', 'filename', 'modified', 'lspstatus' ] ]
    \ }
let g:lightline.component_function = {
    \ 'gitbranch': 'FugitiveHead',
    \ 'lspstatus': 'LspStatus',
    \ }

" Hide mode from status line (already in lightline)
set noshowmode

" Function to obtain current LSP status, if any
function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif
  return ''
endfunction
