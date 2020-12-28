" Set clipboard to system clipboard
set clipboard=unnamedplus

" Enable syntax highlighting and file type identification, plugin and indenting
syntax enable
filetype plugin indent on

" Space/tab width
set tabstop=4
set shiftwidth=4

" Use soft tabs
set softtabstop=4
set expandtab

" Relative line numbers
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber number
augroup END
au TermOpen * setlocal listchars= nonumber norelativenumber

" Show the effects of commands like s/foo/bar incrementally
set inccommand=nosplit

" Highlight line the cursor is on
set cursorline

" Command completion
set wildmode=longest,list,full

" Case-insensitively match patterns if the pattern contains only lowercase
set ignorecase
set smartcase

" Don't redraw screen while executing macros, registers, and other commands
" that have not been typed.
set lazyredraw

" Split below and to the right with :split and :vsplit, respectively
set splitbelow
set splitright

" Persist undo history
set undofile

" Don't save netrw history
let g:netrw_dirhistmax = 0
