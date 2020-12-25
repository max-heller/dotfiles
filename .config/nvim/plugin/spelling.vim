inoremap <c-f> <c-g>u<Esc>[s1z=`]a<c-g>u

function! FixSpellingMistake() abort
  let orig_spell_pos = getcurpos()
  normal! [s1z=
  call setpos('.', orig_spell_pos)
endfunction

nnoremap <c-f> <Cmd>call FixSpellingMistake()<cr>
