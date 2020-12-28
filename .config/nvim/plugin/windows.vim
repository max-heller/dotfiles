function! MapCmd(key, command)
  let Map = {mod, location -> execute("nnoremap <space>".mod.a:key." :<c-u>".location.a:command)}

  call Map("h", "aboveleft vnew <bar> ")
  call Map("j", "belowright new <bar> ")
  call Map("k", "aboveleft new <bar> ")
  call Map("l", "belowright vnew <bar> ")
  call Map("H", "topleft vnew <bar> ")
  call Map("J", "botright new <bar> ")
  call Map("K", "topleft new <bar> ")
  call Map("L", "botright vnew <bar> ")
  call Map(",", "tabnew <bar> ")
  call Map(".", "")
endfunction

call MapCmd("t", "terminal<cr>")
call MapCmd("e", "e ")
call MapCmd("w", "enew <bar> setlocal bufhidden=hide nobuflisted buftype=nofile<cr>")
call MapCmd("f", "Files<cr>")
call MapCmd("F", "Files ")
call MapCmd("b", "Buffers<cr>")
call MapCmd("g", "GFiles<cr>")
call MapCmd("G", "GFiles ")
call MapCmd("r", "Rg<cr>")
call MapCmd("R", "Rg ")
call MapCmd("s", "Startify<cr>")

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --line-number --no-heading --color=always --smart-case --hidden -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

xnoremap @ :<c-u>call ExecuteMacroOverVisualRange()<cr>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal!  @".nr2char(getchar())
endfunction
