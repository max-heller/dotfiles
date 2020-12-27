let opam = substitute(system('opam config var prefix'),'\n$','','''')
let g:opamshare = opam . "/share"
execute "set rtp+=" . g:opamshare . "/merlin/vim"
if !exists('g:merlin') | let g:merlin = {} | endif
let g:merlin.ocamlmerlin_path = opam . "/bin/ocamlmerlin"
