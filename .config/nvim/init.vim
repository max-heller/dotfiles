call plug#begin('~/.local/share/nvim/plugged')

" Snippet support
Plug 'honza/vim-snippets'

" Undo tree visualizer
Plug 'simnalamburt/vim-mundo'

" Directory tree
Plug 'preservim/nerdtree'

" Adds more targets for operating on with i, I, a, A
Plug 'wellle/targets.vim'

" Highlight unique characters in every word on a line to help you use f, F
Plug 'unblevable/quick-scope'

" Yank history
Plug 'bfredl/nvim-miniyank'

" Changes working directory to project root on navigation
Plug 'airblade/vim-rooter'

" Aligning text by specific characters
Plug 'tommcdo/vim-lion'

" Git support
Plug 'tpope/vim-fugitive'

" Remaps . in a way plugins can tap into it
Plug 'tpope/vim-repeat'

" Easy commenting (gc)
Plug 'tpope/vim-commentary'

" Highlight yanked text
Plug 'machakann/vim-highlightedyank'

" Start page
Plug 'mhinz/vim-startify'

" Enables/disables search highlighting at appropriate times
Plug 'romainl/vim-cool'

" Lightline (status line)
Plug 'itchyny/lightline.vim'

" fzf (fuzzy searcher)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Latex support
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" Solarized theme
Plug 'lifepillar/vim-solarized8'

" Language server support
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}

" Rust file detection, syntax highlighting, formatting, etc.
Plug 'rust-lang/rust.vim'

" Typescript and React
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Markdown previewing
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
